using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Sensor;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.InteropServices;

public class UnifiedJointController : MonoBehaviour
{
    [Header("ROS Settings")]
    [SerializeField] string jointStateTopic = "/joint_states";

    [Header("Joint Configuration")]
    [SerializeField] float defaultStiffness = 10000f;
    [SerializeField] float defaultDamping = 100f;
    [SerializeField] float defaultForceLimit = 1000f;

    Dictionary<string, ArticulationBody> joints = new Dictionary<string, ArticulationBody>();
    Dictionary<string, ArticulationDrive> driveCache = new Dictionary<string, ArticulationDrive>();

    void Start()
    {
        var articulationBodies = GetComponentsInChildren<ArticulationBody>();

        foreach (var joint in articulationBodies)
        {

            string rosJointName = joint.gameObject.name
                .Replace("_link", "_joint")
                .ToLower()
                .Trim();
            if (rosJointName == "head_tilt_joint" || rosJointName == "head_pan_joint" || rosJointName == "br_caster_r_wheel_joint" || rosJointName == "br_caster_l_wheel_joint" || rosJointName == "bl_caster_r_wheel_joint" || rosJointName == "bl_caster_l_wheel_joint" || rosJointName == "fr_caster_r_wheel_joint" || rosJointName == "fr_caster_l_wheel_joint" || rosJointName == "fl_caster_r_wheel_joint" || rosJointName == "fl_caster_l_wheel_joint" )
            {
                continue;
            }
            else
            {


                joints[rosJointName] = joint;

                // initial drive params
                var drive = joint.xDrive;
                drive.stiffness = defaultStiffness;
                drive.damping = defaultDamping;
                drive.forceLimit = defaultForceLimit;
                joint.xDrive = drive;

                driveCache[rosJointName] = drive;

                UnityEngine.Debug.Log($"[Joint Mapping] Unity joint '{joint.gameObject.name}' mapped to ROS joint '{rosJointName}'");
            }
        }
        ROSConnection.GetOrCreateInstance().Subscribe<JointStateMsg>(
            jointStateTopic, OnJointStateReceived);

        UnityEngine.Debug.Log($"Subscribed to ROS topic: {jointStateTopic}");
    }

    void OnJointStateReceived(JointStateMsg msg)
    {
        UnityEngine.Debug.Log($"[ROS] Received JointStateMsg with {msg.name.Length} joints");

        for (int i = 0; i < msg.name.Length; i++)
        {
        
            string jointKey = msg.name[i]
                .ToLower()
                .Trim();

            if (joints.TryGetValue(jointKey, out ArticulationBody joint))
            {
                float targetPos = (float)msg.position[i] * Mathf.Rad2Deg;

                ArticulationDrive drive = driveCache[jointKey];
                drive.target = targetPos;

                joint.xDrive = drive;

                UnityEngine.Debug.Log($"[Joint Update] Set '{jointKey}' to {targetPos} degrees");
            }
            else
            {
                UnityEngine.Debug.LogWarning($"[Joint Warning] No matching Unity joint found for ROS joint '{jointKey}'");
            }
        }
    }
}
