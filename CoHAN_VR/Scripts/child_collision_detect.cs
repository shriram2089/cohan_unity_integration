using System.Diagnostics;
using UnityEngine;
using RosMessageTypes.Std;
using Unity.Robotics.ROSTCPConnector;

public class ArticulationCollisionNotifier : MonoBehaviour
{
    public CollisionStopper parentStopper;
    ROSConnection ros;
    string collisionTopic = "/collision_stop";

    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<BoolMsg>(collisionTopic);
    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Human") || collision.gameObject.CompareTag("Environment"))
        {
            UnityEngine.Debug.Log($"[ArticulationCollisionNotifier] Collision on '{gameObject.name}' with '{collision.gameObject.name}'. Notifying parent.");
            parentStopper.NotifyCollision(gameObject.name, collision);
            ros.Publish(collisionTopic, new BoolMsg(true));
            UnityEngine.Debug.Log("Collision detected. Published stop = true");
        }

        
    }

   

    void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.CompareTag("Human") || collision.gameObject.CompareTag("Environment"))
        {
            ros.Publish(collisionTopic, new BoolMsg(false));
            UnityEngine.Debug.Log("Collision cleared. Published stop = false");

        }
    }
}
