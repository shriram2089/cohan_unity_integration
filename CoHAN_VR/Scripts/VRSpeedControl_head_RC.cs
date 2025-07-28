using UnityEngine;
using UnityEngine.XR;
using Unity.XR.CoreUtils;
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
using System.Runtime.InteropServices;


//[RequireComponent(typeof(CharacterController))]
public class VRControllerSpeed : MonoBehaviour
{
    [Header("References")]
    public Transform vrController;            // Controller Transform (e.g., RightHand Controller)
    public Transform xrOrigin;                // Reference to XR Origin

    [Header("Speed Control")]
    public float maxSpeed = 3f;
    public float maxPitchAngle = 90f;

    //private twist;

    private float currentSpeed = 0f;
    string human1cmdvel = "/human1/cmd_vel";
    private Quaternion headRot;
    ROSConnection ros;

    void Start()
    {
        //characterController = GetComponent<CharacterController>();

        ros = ROSConnection.GetOrCreateInstance();

      

        ros.RegisterPublisher<TwistMsg>(human1cmdvel);

        headRot = xrOrigin.rotation;

    }

    void FixedUpdate()
    {
        if (xrOrigin == null || vrController == null)
            return;


       
        Quaternion controllerRot = vrController.rotation;

        Quaternion relativeRot = Quaternion.Inverse(headRot) * controllerRot;

        float pitch = relativeRot.eulerAngles.x;
        if (pitch > 180f) pitch -= 360f;

        //pitch += 90f;
        //float downwardPitch = Mathf.Clamp(pitch, 10f, maxPitchAngle);
        if (pitch< 10f)
            pitch= 0f;
        currentSpeed = (pitch/ maxPitchAngle) * maxSpeed;
        print(pitch);
        print(currentSpeed);
        // Move character forward based on head direction (Y axis ignored)
        //Vector3 headForward = xrOrigin.Camera.transform.forward;
        //headForward.y = 0f;
        //headForward.Normalize();

        //characterController.Move(headForward * currentSpeed * Time.deltaTime);

        //print(currentSpeed);

        var twist = new TwistMsg
        {
            linear = new Vector3Msg(currentSpeed, 0,0),
            angular = new Vector3Msg(0,0,0)
        };
            
            


        ros.Publish(human1cmdvel, twist);


    }

    
}
