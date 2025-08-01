using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.Sensor;
using RosMessageTypes.Std;
using RosMessageTypes.BuiltinInterfaces;
using System;
using System.Collections;

public class SimpleLaserScanner : MonoBehaviour
{
    public int numRays = 360;
    public float scanRange = 10f;
    public LayerMask hitLayers;
    public string topicName = "/base_scan";
    public float publishRate = 50f;  // Hz

    ROSConnection ros;
    LineRenderer[] laserLines;

    void Start()
    {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<LaserScanMsg>(topicName);

        laserLines = new LineRenderer[numRays];
        for (int i = 0; i < numRays; i++)
        {
            GameObject lrObj = new GameObject("LaserRay_" + i);
            lrObj.transform.parent = this.transform;

            LineRenderer lr = lrObj.AddComponent<LineRenderer>();
            lr.material = new Material(Shader.Find("Sprites/Default"));
            lr.startColor = lr.endColor = Color.yellow;
            lr.startWidth = lr.endWidth = 0.02f;
            lr.positionCount = 2;

            // Disable rendering
            lr.enabled = false;

            laserLines[i] = lr;
        }

        StartCoroutine(PublishLaserScan());
    }




    IEnumerator PublishLaserScan()
    {
        float angleOffset = -(Mathf.PI);
        float angleIncrement = (2 * Mathf.PI) / numRays;
        WaitForSeconds wait = new WaitForSeconds(1f / publishRate);

        while (true)
        {
            float[] ranges = new float[numRays];
            Vector3 origin = transform.position;
            Quaternion rotation = transform.rotation;

            for (int i = 0; i < numRays; i++)
            {
                float angle = i * angleIncrement + angleOffset;
                Vector3 localDir = new Vector3(Mathf.Cos(angle), 0, Mathf.Sin(angle));
                Vector3 worldDir = rotation * localDir;
                Vector3 targetPoint = origin + worldDir * scanRange;

                if (Physics.Raycast(origin, worldDir, out RaycastHit hit, scanRange, hitLayers))
                {
                    ranges[i] = hit.distance;
                    targetPoint = hit.point;
                }
                else
                {
                    ranges[i] = scanRange;
                }

                laserLines[i].SetPosition(0, origin);
                laserLines[i].SetPosition(1, targetPoint);
            }

            TimeMsg currentRosTime = GetCurrentRosTime();

            LaserScanMsg scanMsg = new LaserScanMsg
            {
                header = new HeaderMsg
                {
                    frame_id = "base_laser_link",
                    stamp = currentRosTime
                },
                angle_min = -(Mathf.PI),
                angle_max = (Mathf.PI),
                angle_increment = angleIncrement,
                time_increment = 0f,
                scan_time = 0f,
                range_min = 0.08f,
                range_max = scanRange,
                ranges = ranges,
                intensities = new float[numRays]
            };

            ros.Publish(topicName, scanMsg);
            yield return wait;
        }
    }


    // Convert system time to ROS time
    TimeMsg GetCurrentRosTime()
    {
        DateTime utcNow = DateTime.UtcNow;
        DateTime epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
        TimeSpan timeSinceEpoch = utcNow - epoch;

        uint secs = (uint)timeSinceEpoch.TotalSeconds;
        uint nsecs = (uint)((timeSinceEpoch.TotalSeconds - secs) * 1e9);
        return new TimeMsg(secs, nsecs);
    }
}
