using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Trajectory;
using System.Collections.Generic;
using System.Diagnostics;

public class HeadTrajectoryDriveController : MonoBehaviour
{
    [Header("ROS Settings")]
    [SerializeField] string headTrajectoryTopic = "/head_traj_controller/command";

    [Header("Drive Parameters")]
    [SerializeField] float stiffness = 10000f;
    [SerializeField] float damping = 100f;
    [SerializeField] float forceLimit = 10000f;

    Dictionary<string, ArticulationBody> jointMap = new Dictionary<string, ArticulationBody>();
    Dictionary<string, ArticulationDrive> driveCache = new Dictionary<string, ArticulationDrive>();

    void Start()
    {
        ROSConnection.GetOrCreateInstance().Subscribe<JointTrajectoryMsg>(
            headTrajectoryTopic, OnHeadTrajectoryReceived);

        ArticulationBody[] allJoints = GetComponentsInChildren<ArticulationBody>();

        foreach (var joint in allJoints)
        {
            string jointName = joint.name.ToLower().Trim();

           
            if (jointName == "head_pan_link" || jointName == "head_tilt_link")
            {
                jointMap[jointName] = joint;

                var drive = joint.xDrive;
                //drive.stiffness = stiffness;
                //drive.damping = damping;
                drive.forceLimit = forceLimit;
                joint.xDrive = drive;

                driveCache[jointName] = drive;

                UnityEngine.Debug.Log($"[Joint Mapping] Found and mapped joint: {jointName}");
            }
        }
    }

    void OnHeadTrajectoryReceived(JointTrajectoryMsg msg)
    {
        if (msg.points.Length == 0)
        {
            UnityEngine.Debug.LogWarning("[Trajectory] No trajectory points received.");
            return;
        }

        JointTrajectoryPointMsg point = msg.points[0];

        //UnityEngine.Debug.Log($"Received msg for head joints: {msg}");


        for (int i = 0; i < msg.joint_names.Length; i++)
        {
            string jointName = msg.joint_names[i].ToLower().Replace("joint", "link").Trim();

            print(jointName);
            if (jointMap.TryGetValue(jointName, out ArticulationBody joint))
            {
                float targetDeg = -(float)point.positions[i] * Mathf.Rad2Deg;

                ArticulationDrive drive = driveCache[jointName];
                drive.target = targetDeg; 
                drive.forceLimit = forceLimit;

                joint.xDrive = drive;
                //float targetDeg = (float)point.positions[i] * Mathf.Rad2Deg;
                UnityEngine.Debug.Log( point.positions[i] );
                UnityEngine.Debug.Log($"[Head Control] Joint '{jointName}' set to {targetDeg} degrees.");
        }
            else
        {
            UnityEngine.Debug.LogWarning($"[Head Control] No ArticulationBody found for joint '{jointName}'");
        }
    }
    }
}
