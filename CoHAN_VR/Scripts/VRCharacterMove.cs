using UnityEngine;
using UnityEngine.AI;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Geometry;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Collections.Specialized;


public class VRCharMove : MonoBehaviour
{
    private NavMeshAgent _agent;
    public Animator _animator;

    public int humanId = 1;
    public float linearSpeedMultiplier = 1f;
    public float angularSpeedMultiplier = 100f;
    public Transform head;

    private Vector3 helmetDiff = Vector3.zero;
    private Vector3 linearVelocity = Vector3.zero;
    private float angularVelocity = 0f;
    private Vector3 lasthelmetPosition;

    private ROSConnection ros;

    void Start()
    {
        _agent = GetComponent<NavMeshAgent>();

       
        _agent.updatePosition = false;
        _agent.updateRotation = false;

    
        ros = ROSConnection.GetOrCreateInstance();
        string topic = $"/human{humanId}/cmd_vel";
        ros.Subscribe<TwistMsg>(topic, CmdVelCallback);
        lasthelmetPosition = head.position; 

    }

    void FixedUpdate()
    {

        helmetDiff.x = head.position.x - lasthelmetPosition.x;
        helmetDiff.z = head.position.z - lasthelmetPosition.z;
        Vector3 move = transform.forward * linearVelocity.z * linearSpeedMultiplier * Time.deltaTime;
        transform.position += helmetDiff  + move;
        //transform.position += move;


        
        float rotationAmount = angularVelocity * angularSpeedMultiplier * Time.deltaTime;
        transform.Rotate(0, rotationAmount, 0);

       
        if (_animator != null)
        {
            float speed = new Vector2(linearVelocity.x, linearVelocity.z).magnitude;
            _animator.SetFloat("speed", speed);
        }

       
        _agent.nextPosition = transform.position;
        lasthelmetPosition = head.position;
    }
       

    private void CmdVelCallback(TwistMsg msg)
    {
        //linearVelocity = new Vector3(0 , 0 , 1f);
        linearVelocity = new Vector3((float)msg.linear.y, (float)msg.linear.z, (float)msg.linear.x);
        //print(linearVelocity);
        angularVelocity = (float)msg.angular.z;
    }
}
