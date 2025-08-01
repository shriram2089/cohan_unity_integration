





using UnityEngine;
using RosMessageTypes.Nav;
using RosMessageTypes.Geometry;
using RosMessageTypes.Std;
using RosMessageTypes.BuiltinInterfaces;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;
using RosMessageTypes.Nav;
using RosMessageTypes.Geometry;
using RosMessageTypes.Std;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.BuiltinInterfaces;
using System;
using System.Collections.Specialized;
using System.Collections.Generic;

public class HumanCmdVelOdom : MonoBehaviour
{
    public int numHumans; // Make this configurable from the Unity Inspector
    public List<GameObject> humanObjects = new List<GameObject>(); // Assign humans in inspector in order

    private ROSConnection ros;
    private float publishInterval = 0.01f;
    private float timeElapsed = 0f;

    private Quaternion rotationOffset = Quaternion.Euler(0f, -90f, 0f);

    private Dictionary<GameObject, string> odomTopics = new Dictionary<GameObject, string>();
    private Dictionary<GameObject, string> cmdVelTopics = new Dictionary<GameObject, string>();

    private Dictionary<GameObject, Rigidbody> rigidbodies = new Dictionary<GameObject, Rigidbody>();
    private Dictionary<GameObject, Vector3> lastPositions = new Dictionary<GameObject, Vector3>();
    private Dictionary<GameObject, Quaternion> lastRotations = new Dictionary<GameObject, Quaternion>();
    private Dictionary<GameObject, Vector3> linearVelocities = new Dictionary<GameObject, Vector3>();
    private Dictionary<GameObject, float> angularVelocities = new Dictionary<GameObject, float>();

    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();

        for (int i = 0; i < numHumans; i++)
        {
            GameObject human = humanObjects[i];

            string odomTopic = $"/human{i + 1}/odom";
            odomTopics[human] = odomTopic;
            ros.RegisterPublisher<OdometryMsg>(odomTopic);

            string cmdVelTopic = $"/human{i + 1}/cmd_vel";
            cmdVelTopics[human] = cmdVelTopic;

            // Subscribe to cmd_vel only if needed
            if (i != 0) // Assuming human1 is not controlled
            {
                ros.Subscribe<TwistMsg>(cmdVelTopic, (msg) => CmdVelReceived(msg, human));
            }

            //Rigidbody rb = human.GetComponent<Rigidbody>();
            //rigidbodies[human] = rb;

            lastPositions[human] = human.transform.position;
            lastRotations[human] = human.transform.rotation;

            linearVelocities[human] = Vector3.zero;
            angularVelocities[human] = 0f;
        }
    }

    void CmdVelReceived(TwistMsg msg, GameObject human)
    {
        linearVelocities[human] = ConvertTwistToUnityVector(msg);
        angularVelocities[human] = (float)msg.angular.z;
    }

    Vector3 ConvertTwistToUnityVector(TwistMsg twist)
    {
        return new Vector3(-(float)twist.linear.y, 0f, -(float)twist.linear.x);
    }

    void Update()
    {
        float dt = Time.deltaTime;


        timeElapsed += dt;
        if (timeElapsed >= publishInterval)
        {
            foreach (var human in humanObjects)
            {
                PublishHumanOdometry(human);
            }
            timeElapsed = 0f;
        }
    }

    void PublishHumanOdometry(GameObject human)
    {
        Vector3 unityPos = human.transform.position;
        Quaternion unityRot = human.transform.rotation;

        unityRot = rotationOffset * unityRot;

        Vector3 rosPos = new Vector3(unityPos.x, unityPos.z, unityPos.y);
        Quaternion rosRot = new Quaternion(-unityRot.z, unityRot.x, unityRot.y, -unityRot.w);

        float dt = Time.deltaTime;
        if (dt <= 0) return;

        Vector3 deltaPos = unityPos - lastPositions[human];
        float deltaAngularZ = (unityRot.eulerAngles.y * Mathf.Deg2Rad - lastRotations[human].eulerAngles.y * Mathf.Deg2Rad) / dt;

        Vector3 unityVelWorld = deltaPos / dt;
        Vector3 rosVelFinal = new Vector3(unityVelWorld.x, unityVelWorld.z, 0);
        Vector3 rosAngularVelFinal = new Vector3(0, 0, -deltaAngularZ);

        TimeMsg currentRosTime = GetCurrentRosTime();

        var odomMsg = new OdometryMsg
        {
            header = new HeaderMsg
            {
                stamp = currentRosTime,
                frame_id = "map"
            },
            child_frame_id = "",
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

        ros.Publish(odomTopics[human], odomMsg);

        lastPositions[human] = human.transform.position;
        lastRotations[human] = rotationOffset * human.transform.rotation;

        UnityEngine.Debug.Log($"[Odometry] Published odometry for {human.name} with linear vel {rosVelFinal} and angular vel {rosAngularVelFinal}");
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
