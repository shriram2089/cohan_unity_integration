using UnityEngine;
using RosMessageTypes.Nav;
using RosMessageTypes.Geometry;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.BuiltinInterfaces;
using RosMessageTypes.Std;

public class HumanOdometryPublisher : MonoBehaviour
{
    public GameObject human1;
    public GameObject human2;

    public string human1Topic = "/human1/odom";
    public string human2Topic = "/human2/odom";

    ROSConnection ros;
    float publishInterval = 0.1f;
    float timeElapsed = 0f;

    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<OdometryMsg>(human1Topic);
        ros.RegisterPublisher<OdometryMsg>(human2Topic);
    }

    void FixedUpdate()
    {
        timeElapsed += Time.deltaTime;
        if (timeElapsed >= publishInterval)
        {
            PublishHumanOdometry(human1, human1Topic);
            PublishHumanOdometry(human2, human2Topic);
            timeElapsed = 0f;
        }
    }

    Quaternion rotationOffset = Quaternion.Euler(0f, -90f, 0f);


    void PublishHumanOdometry(GameObject human, string topic)
    {
        Vector3 unityPos = human.transform.position;
        Quaternion unityRot = human.transform.rotation;

        unityRot = rotationOffset* unityRot;


        Vector3 rosPos = new Vector3(unityPos.x, unityPos.z, unityPos.y);
        Quaternion rosRot = new Quaternion(-unityRot.z, unityRot.x, unityRot.y, -unityRot.w);

      
        Vector3 linearVel = Vector3.zero;
        Vector3 angularVel = Vector3.zero;

        var odomMsg = new OdometryMsg
        {
            header = new HeaderMsg
            {
                stamp = new TimeMsg
                {
                    sec = (uint)Time.realtimeSinceStartup,
                    nanosec = (uint)((Time.realtimeSinceStartup % 1) * 1e9f)
                },
                frame_id = "map"
            },
            child_frame_id = "",  // or human.name
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
                    linear = new Vector3Msg(linearVel.x, linearVel.y, linearVel.z),
                    angular = new Vector3Msg(angularVel.x, angularVel.y, angularVel.z)
                },
                covariance = new double[36] 
            }
        };

        ros.Publish(topic, odomMsg);
    }
}
