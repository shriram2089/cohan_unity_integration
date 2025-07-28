using System;
using System.Diagnostics;
using UnityEngine;
using UnityEngine.AI;

public class RandomMove : MonoBehaviour
{
    private NavMeshAgent _agent;
    public Animator _animator;

    public int numberOfTargets = 20;
    public float range = 20f;

    private Vector3[] targets;
    private int currentTargetIndex = -1;

    private float stuckTime = 0f;
    private float stuckThreshold = 3f; // seconds
    private float lastMovementCheckTime = 0f;
    private Vector3 lastPosition;

    void Start()
    {
        _agent = GetComponent<NavMeshAgent>();

   
        NavMeshHit initHit;
        if (NavMesh.SamplePosition(transform.position, out initHit, 5f, NavMesh.AllAreas))
        {
            transform.position = initHit.position;
        }
        else
        {
            UnityEngine.Debug.LogError("Agent could not be placed on NavMesh!");
            enabled = false;
            return;
        }

        targets = new Vector3[numberOfTargets];
        for (int i = 0; i < numberOfTargets; i++)
        {
            Vector3 randomPos = new Vector3(
                UnityEngine.Random.Range(-5f, 15f),
                0,
                UnityEngine.Random.Range(-12f, 30f)
            );

            NavMeshHit hit;
            if (NavMesh.SamplePosition(randomPos, out hit, 5f, NavMesh.AllAreas))
                targets[i] = hit.position;
            else
                targets[i] = transform.position;
        }

        lastPosition = transform.position;
        lastMovementCheckTime = Time.time;

      
        MoveToRandomTarget();
    }



    void FixedUpdate()
    {
        if (_animator != null)
        {
            float speedPercent = _agent.velocity.magnitude / _agent.speed;
            _animator.SetFloat("speed", speedPercent);
        }

        
        UnityEngine.Debug.DrawLine(transform.position, _agent.destination, Color.green);
        UnityEngine.Debug.Log($"[UPDATE] Position: {transform.position} | Destination: {_agent.destination} | Velocity: {_agent.velocity} | isStopped: {_agent.isStopped} | onNavMesh: {_agent.isOnNavMesh}");

        if (!_agent.pathPending && _agent.remainingDistance <= _agent.stoppingDistance)
        {
            if (!_agent.hasPath || _agent.velocity.sqrMagnitude < 0.01f)
            {
                MoveToRandomTarget();
            }
        }

      
        float timeSinceLastCheck = Time.time - lastMovementCheckTime;
        if (timeSinceLastCheck >= 0.5f)
        {
            float distanceMoved = Vector3.Distance(transform.position, lastPosition);
            if (distanceMoved < 0.1f)
            {
                stuckTime += timeSinceLastCheck;
            }
            else
            {
                stuckTime = 0f;
            }

            lastPosition = transform.position;
            lastMovementCheckTime = Time.time;

            if (stuckTime >= stuckThreshold)
            {
                UnityEngine.Debug.LogWarning("Agent stuck. Switching target.");
                _agent.ResetPath();
                MoveToRandomTarget();
                stuckTime = 0f;
            }
        }
    }


    void MoveToRandomTarget()
    {
        if (targets.Length == 0 || !_agent.isOnNavMesh || !_agent.isActiveAndEnabled) return;

        int newIndex = UnityEngine.Random.Range(0, targets.Length);
        while (newIndex == currentTargetIndex && targets.Length > 1)
            newIndex = UnityEngine.Random.Range(0, targets.Length);

        currentTargetIndex = newIndex;

        if (!_agent.SetDestination(targets[currentTargetIndex]))
        {
            UnityEngine.Debug.LogWarning("SetDestination failed");
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Environment"))
        {
            UnityEngine.Debug.Log("Hit obstacle! Avoiding it.");

            //_agent.isStopped = true;
            _agent.ResetPath();

            Vector3 newDirection = Quaternion.Euler(0, UnityEngine.Random.Range(-120, 120), 0) * transform.forward;
            Vector3 avoidPos = transform.position + newDirection.normalized * 3f;

            NavMeshHit hit;
            if (NavMesh.SamplePosition(avoidPos, out hit, 5f, NavMesh.AllAreas))
            {
                if (_agent.isOnNavMesh && _agent.isActiveAndEnabled)
                    _agent.SetDestination(hit.position);
            }
            else
            {
                MoveToRandomTarget();
            }
        }
    }


}
