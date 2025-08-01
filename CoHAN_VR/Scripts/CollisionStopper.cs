using UnityEngine;
using RosMessageTypes.Geometry;
using Unity.Robotics.ROSTCPConnector;
using System.Diagnostics;

public class CollisionStopper : MonoBehaviour
{
    private ROSConnection ros;
    private string topicName = "/base_controller/command";
    public bool stop = false;

    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();

        
        var colliders = GetComponentsInChildren<Collider>();
        UnityEngine.Debug.Log($"[CollisionStopper] Found {colliders.Length} colliders on articulation links.");

        foreach (var col in colliders)
        {
            if (col.gameObject != this.gameObject)
            {
                var notifier = col.gameObject.GetComponent<ArticulationCollisionNotifier>();
                if (notifier == null)
                {
                    notifier = col.gameObject.AddComponent<ArticulationCollisionNotifier>();
                    notifier.parentStopper = this;
                    UnityEngine.Debug.Log($"[CollisionStopper] Added notifier on {col.gameObject.name}");
                }
            }
        }
    }

    public void NotifyCollision(string linkName, Collision collision)
    {
        UnityEngine.Debug.Log($"[CollisionStopper] Collision detected on '{linkName}' with '{collision.gameObject.name}'. Stopping robot.");
        StopRobot();
        stop = true;
    }

    //void StopRobot()
    //{
    //    TwistMsg zeroTwist = new TwistMsg();
    //    zeroTwist.linear = new RosMessageTypes.Geometry.Vector3Msg(0, 0, 0);
    //    zeroTwist.angular = new RosMessageTypes.Geometry.Vector3Msg(0, 0, 0);

    //    ros.Publish(topicName, zeroTwist);
    //    UnityEngine.Debug.Log("[CollisionStopper] Published zero velocity to stop the robot.");
    //}


    void StopRobot()
    {
        ArticulationBody ab = GetComponent<ArticulationBody>();
        if (ab != null)
        {
            ab.linearVelocity = Vector3.zero;
            ab.angularVelocity = Vector3.zero;
            UnityEngine.Debug.Log("[CollisionStopper] Root ArticulationBody velocities set to zero. Robot stopped.");
        }
        else
        {
            UnityEngine.Debug.LogWarning("[CollisionStopper] No ArticulationBody found on root to stop.");
        }
    }

}
