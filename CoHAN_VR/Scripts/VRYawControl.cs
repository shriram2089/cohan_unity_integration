using UnityEngine;
using UnityEngine.XR;
using Unity.XR.CoreUtils;
using System.Security.Cryptography;
using System.Runtime.InteropServices;

public class HeadLook : MonoBehaviour
{
    public float yawAngle = 90f;
    public Transform head,xrHead;
    private Quaternion localOffset;


    void Start()
    {
        Animator animator = GetComponent<Animator>();

        if (head != null && xrHead != null)
            localOffset = Quaternion.Inverse(xrHead.rotation) * head.rotation;
            
    }

    void LateUpdate()
    {



  

        Quaternion xrWorldRot = xrHead.rotation ;

        Quaternion localRot = Quaternion.Inverse(head.parent.rotation) * xrWorldRot;

         head.localRotation = localRot  * Quaternion.Euler(0, 0, -90f) * Quaternion.Euler(90f, 0, 0); ;





    }


}

