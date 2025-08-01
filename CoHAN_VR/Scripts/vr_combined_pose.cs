using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Geometry;
using RosMessageTypes.Std;
using RosMessageTypes.BuiltinInterfaces;
using System.Diagnostics;

public class VRPosePublisher2 : MonoBehaviour
{
    ROSConnection ros;
    public string poseArrayTopic = "/vr/pose_combined";

    public Transform vrCamera;
    public Transform body; 

    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<PoseArrayMsg>(poseArrayTopic);
    }

    void Update()
    {
        PublishPoseArray();
    }

    void PublishPoseArray()
    {
   
        Vector3 headWorldPos = vrCamera.position;
        Vector3 bodyWorldPos = body.position;

   
        Quaternion headWorldRot = vrCamera.rotation;
        Quaternion bodyWorldRot = body.rotation;

  
        Quaternion headRotRelativeToBody = Quaternion.Inverse(bodyWorldRot) * headWorldRot;

      
        UnityEngine.Debug.LogError($"[Head]    Pos = {headWorldPos}, World Rot = {headWorldRot.eulerAngles}");
        UnityEngine.Debug.LogError($"[Body]    Pos = {bodyWorldPos}, World Rot = {bodyWorldRot.eulerAngles}");
        UnityEngine.Debug.LogError($"[Relative] Head w.r.t Body Euler = {headRotRelativeToBody.eulerAngles}");

       
        PoseMsg headPose = new PoseMsg(
            new PointMsg(headWorldPos.x, headWorldPos.y, headWorldPos.z),
            new QuaternionMsg(headRotRelativeToBody.x, headRotRelativeToBody.y, headRotRelativeToBody.z, headRotRelativeToBody.w)
        );

        
        PoseMsg bodyPose = new PoseMsg(
            new PointMsg(bodyWorldPos.x, bodyWorldPos.y, bodyWorldPos.z),
            new QuaternionMsg(bodyWorldRot.x, bodyWorldRot.y, bodyWorldRot.z, bodyWorldRot.w)
        );

  
        PoseArrayMsg poseArray = new PoseArrayMsg
        {
            header = new HeaderMsg
            {
                frame_id = "map",
                stamp = new TimeMsg()
            },
            poses = new PoseMsg[] { headPose, bodyPose }
        };

        ros.Publish(poseArrayTopic, poseArray);
    }
}
