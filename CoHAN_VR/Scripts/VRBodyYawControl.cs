using UnityEngine;
using UnityEngine.XR;
using Unity.XR.CoreUtils;
using System.Security.Cryptography;


public class VRBodyYawController : MonoBehaviour
{
    //[Header("References")]
    public Transform body;            // Controller Transform (e.g., RightHand Controller)
    public Transform xrOrigin;                // Reference to XR Origin

    
    private Quaternion headRot;

    void Start()
    {

    }

    void Update()
    {


        Quaternion bodyRotation = body.rotation;

  
        float yaw = body.rotation.eulerAngles.y;
        
        if(yaw < 0.0f) { yaw *= -1f; }
        transform.rotation = Quaternion.Euler(0 , yaw , 0);
       
    }


}
