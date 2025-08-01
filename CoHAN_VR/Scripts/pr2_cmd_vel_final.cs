using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.ROSGeometry;

using RosMessageTypes.Geometry;
using RosMessageTypes.Nav;
using RosMessageTypes.Std;
using RosMessageTypes.BuiltinInterfaces;
using System.Diagnostics;
using System.Collections.Generic;
using RosMessageTypes.Tf2;
using System.Collections.Specialized;
using System;


public class PR2VelocityController : MonoBehaviour
{
    private ArticulationBody rootAB;
    private ROSConnection ros;
    public float timeoutDuration = 1.0f;  // seconds
    private float lastCmdTime = -1f;

    //[SerializeField] private string cmdVelTopic = "/base_controller/command";
    [SerializeField] private string cmdVelTopic = "/cmd_vel";

    //[SerializeField] private string cmdVelTopic = "/cmd_vel";
    [SerializeField] private string odomPubTopic1 = "/odom_unity_1";
    //[SerializeField] private string odomPubTopic2 = "/odom_unity_2";
    [SerializeField] private float publishRate = 100f;

    private float timeElapsed = 0f;
    private float publishInterval;

    private Vector3 currentVelocity = Vector3.zero;
    private Vector3 currentAngularVelocity = Vector3.zero;

    private Vector3 lastPosition;
    private Quaternion lastRotation;


  
    string tfTopic = "/tf";
    string odomTopic = "/odom_unity_1";
    OdometryMsg latestOdom;

    void Start()
    {
        rootAB = GetComponent<ArticulationBody>();
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<OdometryMsg>("/odom_unity_1");
        //ros.RegisterPublisher<OdometryMsg>("/odom_unity_2");


        ros.Subscribe<TwistMsg>(cmdVelTopic, OnCmdVelReceived);

        publishInterval = 1f / publishRate;
        lastPosition = transform.position;
        lastRotation = transform.rotation;

        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<TFMessageMsg>(tfTopic);
        ros.Subscribe<OdometryMsg>(odomTopic, OdomCallback);

        UnityEngine.Debug.Log("TF Broadcaster started and subscribed to: " + odomTopic);

        UnityEngine.Debug.Log("[PR2VelocityController] Subscribed to " + cmdVelTopic);
    }


    void StopAllArticulationBodies()
    {
        var allBodies = GetComponentsInChildren<ArticulationBody>();
        foreach (var body in allBodies)
        {
            body.linearVelocity = Vector3.zero;
            body.angularVelocity = Vector3.zero;
            body.jointVelocity = new ArticulationReducedSpace(0f);
            body.Sleep();

            // Reset drives to zero force
            var drive = body.xDrive;
            drive.stiffness = 0f;
            drive.damping = 0f;
            drive.forceLimit = 0f;
            body.xDrive = drive;
        }
    }



    void FixedUpdate()
    {

        rootAB.linearVelocity = transform.rotation * currentVelocity;
        rootAB.angularVelocity = transform.rotation * currentAngularVelocity;

        

        //UnityEngine.Debug.Log(currentVelocity);
        //UnityEngine.Debug.Log(currentAngularVelocity);

        //rootAB.angularVelocity = currentAngularVelocity;


        timeElapsed += Time.fixedDeltaTime;
        string header1 = "map";
        string child1 = "base_footprint";

        string header2 = "odom";
        string child2 = "";


        if (Time.time - lastCmdTime > timeoutDuration)
        {


            // Stop root articulation body velocities
            rootAB.linearVelocity = Vector3.zero;
            rootAB.angularVelocity = Vector3.zero;
            rootAB.jointVelocity = new ArticulationReducedSpace(0f);

            //// Stop ALL articulation bodies in children (important!)
            ////StopAllArticulationBodies();

            //// Optionally sleep rigidbody to reset physics forces
            rootAB.Sleep();

            //UnityEngine.Debug.Log("No cmd_vel received - robot halted and velocities cleared.");





            //UnityEngine.Debug.Log($"[ANGULAR] Input: {currentAngularVelocity}, RootAB: {rootAB.angularVelocity}");

        }


 



        //if (timeElapsed >= publishInterval)
        //{
            PublishOdometry(header1, child1, odomPubTopic1);
            //PublishOdometry(header2, child2, odomPubTopic2);
            timeElapsed = 0f;



            if (latestOdom == null) return;

            // Create header with timestamp
            TimeMsg currentTime = new TimeMsg
            {
                sec = (uint)System.DateTimeOffset.UtcNow.ToUnixTimeSeconds(),
                nanosec = (uint)(System.DateTimeOffset.UtcNow.ToUnixTimeMilliseconds() % 1000) * 1000000
            };

            HeaderMsg header = new HeaderMsg
            {
                frame_id = "odom_combined",
                stamp = currentTime
            };

            // Create transform
            TransformStampedMsg tfStamped = new TransformStampedMsg
            {
                header = header,
                child_frame_id = "base_footprint",
                transform = new TransformMsg
                {
                    translation = new Vector3Msg(
                        latestOdom.pose.pose.position.x,
                        latestOdom.pose.pose.position.y,
                        latestOdom.pose.pose.position.z
                    ),
                    rotation = new QuaternionMsg(
                        latestOdom.pose.pose.orientation.x,
                        latestOdom.pose.pose.orientation.y,
                        latestOdom.pose.pose.orientation.z,
                        latestOdom.pose.pose.orientation.w
                    )
                }


            };



       
            //TFMessageMsg tfMsg = new TFMessageMsg(new TransformStampedMsg[] { tfStamped });
            RosMessageTypes.Tf2.TFMessageMsg tfMsg = new RosMessageTypes.Tf2.TFMessageMsg(new RosMessageTypes.Geometry.TransformStampedMsg[] { tfStamped });

            ros.Publish(tfTopic, tfMsg);


        //}


    }


    void OdomCallback(OdometryMsg msg)
    {
        latestOdom = msg;
    }

    void OnCmdVelReceived(TwistMsg msg)
    {
        // Forward/backward
        float forward = (float)msg.linear.x;

        // Left/right (inverted)
        //float strafe = -(float)msg.linear.y;
        float strafe = 0f;

        // Yaw
        float rotation = -(float)msg.angular.z;

        currentVelocity = new Vector3(strafe, 0f, forward);
        currentAngularVelocity = new Vector3(0f, rotation, 0f);

        lastCmdTime = Time.time;
    }




    Vector3 positionOffset = new Vector3(0f, 0f , 0f);
    Quaternion rotationOffset = Quaternion.Euler(0f, -90f, 0f);

    void PublishOdometry(string header, string child, string odomPubTopic)
    {
      
        Vector3 unityPosition = transform.position;
        Quaternion unityRotation = transform.rotation;

       
        

        Vector3 pos = unityPosition;
        Quaternion rot = rotationOffset * unityRotation;

        //float dt = publishInterval;

        //POSITION ODOM
        Vector3 rosPos = new Vector3(pos.x, pos.z, pos.y) + positionOffset;
        Quaternion rosRot = new Quaternion(-rot.z, rot.x, rot.y, -rot.w);

      



        float dt = Time.fixedDeltaTime;


        Vector3 deltaPos = unityPosition - lastPosition;

        UnityEngine.Debug.Log("deltapos" + deltaPos);
        Vector3 unityVelWorld = deltaPos / dt;

        float vx_world = unityVelWorld.x;
        float vy_world = unityVelWorld.y;
        float vz_world = unityVelWorld.z;

        UnityEngine.Debug.Log("vx,vz: " + vx_world + vz_world);

        float theta = (transform.eulerAngles.y) * Mathf.Deg2Rad;

        UnityEngine.Debug.Log("theta: " + theta);
        float cosT = Mathf.Cos(theta);
        float sinT = Mathf.Sin(theta);

        
        float vz_local = cosT * vz_world +sinT * vx_world;
        float vx_local = -sinT * vz_world +cosT * vx_world;

        
        Vector3 rosVelFinal = new Vector3(vz_local, -vx_local, 0);  

        Quaternion deltaRot = unityRotation * Quaternion.Inverse(lastRotation);
        deltaRot.ToAngleAxis(out float angle, out Vector3 axis);
        if (angle > 180f) angle -= 360f;
        Vector3 angularVelUnity = (angle * Mathf.Deg2Rad / dt) * axis;

       
        Vector3 rosAngularVelFinal = new Vector3(0, 0, -angularVelUnity.y);

        //UnityEngine.Debug.Log( "ROS Linear Velocity (base_link): " + rosVelFinal);
        //UnityEngine.Debug.Log("ROS Angular Velocity (base_link): " + rosAngularVelFinal);











        TimeMsg currentRosTime = GetCurrentRosTime();


        var odomMsg = new OdometryMsg
        {
            header = new HeaderMsg
            {
                stamp = currentRosTime,
                frame_id = header
            },
            child_frame_id = child,
            pose = new PoseWithCovarianceMsg
            {
                pose = new PoseMsg
                {
                    position = new PointMsg(rosPos.x, rosPos.y, rosPos.z),
                    orientation = new QuaternionMsg(rosRot.x, rosRot.y, rosRot.z, rosRot.w)
                },
                covariance = new double[36]
            },
            twist = new TwistWithCovarianceMsg
            {
                twist = new TwistMsg
                {
                    linear = new Vector3Msg(rosVelFinal.x, rosVelFinal.y, rosVelFinal.z),
                    angular = new Vector3Msg(rosAngularVelFinal.x, rosAngularVelFinal.y, rosAngularVelFinal.z)
                },
                covariance = new double[36]
            }
        };

        ros.Publish(odomPubTopic, odomMsg);

        lastPosition = unityPosition;
        lastRotation = unityRotation;
    }


    TimeMsg GetCurrentRosTime()
    {
        DateTime utcNow = DateTime.UtcNow;
        DateTime epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
        TimeSpan timeSinceEpoch = utcNow - epoch;

        uint secs = (uint)timeSinceEpoch.TotalSeconds;
        uint nsecs = (uint)((timeSinceEpoch.TotalSeconds - secs) * 1e9);
        return new TimeMsg(secs, nsecs);
    }

}
