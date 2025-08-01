using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.Sensor;
using System;

public class CameraPublisher : MonoBehaviour
{
    public Camera headCamera;
    public string topicName = "/pr2_cam/image_raw";

    private ROSConnection ros;
    private RenderTexture renderTexture;
    private Texture2D texture2D;

    void Start()
    {

        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<ImageMsg>(topicName);

 
        renderTexture = new RenderTexture(1920, 1080, 24);
        renderTexture.antiAliasing = 4;


        if (headCamera != null)
            headCamera.targetTexture = renderTexture;

        texture2D = new Texture2D(renderTexture.width, renderTexture.height, TextureFormat.RGBA32, false);
    }

    void Update()
    {
       
        RenderTexture.active = renderTexture;
        texture2D.ReadPixels(new Rect(0, 0, renderTexture.width, renderTexture.height), 0, 0);
        texture2D.Apply();
        RenderTexture.active = null;

       
        byte[] imageBytes = texture2D.GetRawTextureData();
        byte[] rotatedBytes = RotateImage180(imageBytes, texture2D.width, texture2D.height);

      
        ImageMsg msg = new ImageMsg
        {
            header = new RosMessageTypes.Std.HeaderMsg
            {
                stamp = new RosMessageTypes.BuiltinInterfaces.TimeMsg
                {
                    sec = (uint)Math.Floor(Time.time),
                    nanosec = (uint)((Time.time - Math.Floor(Time.time)) * 1e9)
                },
                frame_id = "head_camera"
            },
            height = (uint)renderTexture.height,
            width = (uint)renderTexture.width,
            encoding = "rgba8",
            is_bigendian = 0,
            step = (uint)(renderTexture.width * 4),
            data = rotatedBytes
        };

        ros.Publish(topicName, msg);
    }

    public static byte[] RotateImage180(byte[] imageBytes, int width, int height)
    {
        int bytesPerPixel = 4; 
        byte[] rotated = new byte[imageBytes.Length];

        for (int y = 0; y < height; y++)
        {
            for (int x = 0; x < width; x++)
            {
                int srcIndex = (y * width + x) * bytesPerPixel;
                int dstIndex = ((height - 1 - y) * width + (width - 1 - x)) * bytesPerPixel;

                for (int i = 0; i < bytesPerPixel; i++)
                {
                    rotated[dstIndex + i] = imageBytes[srcIndex + i];
                }
            }
        }

        return rotated;
    }
}
