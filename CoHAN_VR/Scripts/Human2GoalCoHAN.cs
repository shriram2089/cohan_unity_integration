//using UnityEngine;
//using UnityEngine.AI;
//using Unity.Robotics.ROSTCPConnector;
//using RosMessageTypes.Geometry;
//using RosMessageTypes.AgentPathPrediction; 

//public class Human2GoalCoHAN : MonoBehaviour
//{
//    private NavMeshAgent _agent;
//    public Animator _animator;

//    ROSConnection ros;
//    public string serviceName = "/agent_path_predict/set_agent_goal";

//    void Start()
//    {
//        _agent = GetComponent<NavMeshAgent>();
//        ros = ROSConnection.GetOrCreateInstance();

      
//        Vector3 unityGoal = new Vector3(1f, 0f, 2f);
//        CallSetAgentGoalService(unityGoal);
//    }

//    void Update()
//    {
//        if (_animator != null)
//        {
//            float speedPercent = _agent.velocity.magnitude / _agent.speed;
//            _animator.SetFloat("speed", speedPercent);
//        }
//        else
//        {
//            Debug.LogError("Animator is NULL");
//        }
//    }

//    public void CallSetAgentGoalService(Vector3 unityGoal)
//    {
        
//        var request = new AgentGoalRequest();

     
//        AgentPoseMsg agentPose = new AgentPoseMsg();
//        agentPose.id = 2;
//        agentPose.type = 0;

       
//        PoseStampedMsg poseStamped = new PoseStampedMsg();

 
//        poseStamped.header = new Std.HeaderMsg();
//        poseStamped.header.frame_id = "map";

      
//        poseStamped.pose = new PoseMsg(
//            new PointMsg(unityGoal.x, 0, unityGoal.z),
//            new QuaternionMsg(0, 0, 0, 1)
//        );

//        agentPose.pose = poseStamped;

        
//        request.agents = new AgentPoseMsg[] { agentPose };

//        ros.CallService<AgentGoalRequest, AgentGoalResponse>(serviceName, request, ServiceResponseHandler);
//    }

//    private void ServiceResponseHandler(AgentGoalResponse response)
//    {
//        Debug.Log("Service responded: " + response.ToString());

//    }
//}
