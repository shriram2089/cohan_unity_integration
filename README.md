# CoHAN-VR: Realistic Human-Robot Social Navigation in Virtual Reality

## Overview

This project integrates **CoHAN 2.0 (Co-operative Human-Aware Navigation)** with a realistic **Virtual Reality testbed** in Unity for conducting **social navigation user-studies**. It supports speech, complete DoF mapping, head motion, multi-environment VR scenes, and cooperative robot navigation using ROS.

---

## System Architecture

```
+----------------+        +------------------+        +----------------+
|   Unity 3D VR  | <----> |     ROS Bridge   | <----> |     CoHAN 2.0  |
|  (HTC Vive +   |        |  (ROS TCP        |        |  (Planner, RViz|
|   Controllers) |        |  Connector)      |        |   Navigation)  |
+----------------+        +------------------+        +----------------+
```

Other Components:
- Voice Input (gTTS + Whisper/STT)
- Ollama Chatbot
- RViz Visualizer
- PR2 + Human + Robot Agents

---

## Folder Structure

```

/cohan_unity_integration
  ├── CoHAN_VR/               # Unity VR project
  ├── ECoHAN                  # Attributes eg. speech package
  ├── cohan2_ws/              # ROS Workspace with CoHAN 2.0
  ├── cohan_multi_ws/         # Old Version of CoHAN
  ├── README.md
```

---

## Prerequisites

- Unity 2021.3.x (or later i.e Versions 4 - 6) + with OpenXR Plugin and ROS TCP Connector
- ROS Noetic (Ubuntu 20.04)
- Python 3.8+
- HTC Vive or Meta Quest 2
- SteamVR, gTTS, Whisper, OLLama

---

## Installation

### Unity Setup

- Import ROS TCP Connector
- Add PR2 prefab with colliders
- Configure XR Rig:
  - Headset → head pose
  - Right controller → body yaw + velocity
- Load environments: Office, Warehouse, Factory

### ROS Setup

```bash
sudo apt install ros-noetic-desktop-full
git clone https://github.com/shriram2089/cohan_unity_integration.git
cd cohan_unity_integration-main/cohan2_ws
catkin build
source devel/setup.bash
```
Launch file eg. roslaunch cohan_stage_navigation pr2_no_gz_WareHouse.launch
Beofre running, the number of agents are set corresponding to need (and after checking Unity) in the launch file arg  eg. <arg name="num_agents" default="18"/>

---

## Character Mapping

| Body Part   | Mapping Logic                         |
|-------------|----------------------------------------|
| Head        | Follows headset rotation               |
| Body        | Yaw from right controller joystick     |
| Speed       | Right controller pitch (0–60° → speed) |

---

## Pipeline Flow

1. User wears VR headset and connects the controllers
2. Goals (by choice or random) are given to the robot and human agents in the scne
3. CoHAN computes safe path and publishes the velocities, trajectories and the time-elastic bands / Head motion script controls the head of the robot corresponding to the agent scenarios
4. Unity feeds odometry and lidar data back into CoHAN
5. VR Avatar responses triggered by proximity bands
6. Speech input → Whisper → command
7. OLLama generates chatbot response
8. RViz monitors robot and agent behavior
9. Social signals (head motion, speech, etc) are tracked over time

---

## Scenarios

### Office

- Robot: PR2 fetches coffee to conference rooms
- User: Office worker navigating rooms

### Warehouse

- Robot: PR2 audits workers
- User: Warehouse supervisor patrolling

---

## Speech & Visual Feedback

- Voice input via Whisper → PR2 command (TCP connector used here as WSL is running)
- Chatbot via OLLama → headset playback
- Unity scene shows PR2 camera on canvas
- RViz used for real-time monitoring

---

## Study Metrics

| Metric            | Description                             |
|-------------------|-----------------------------------------|
| Head motion       | User gaze vs PR2 head yaw + pitch       |
| Speech interaction| Command count, timing                   |
| Collision events  | Band switching and obstacle response    |
| Task completion   | User and robot timing logs              |
| Path deviation    | Robot trajectory vs optimal             |

---

## Testing

First start Unity scene with VR headset and controllers connected (launch VIVE Wireless and SteamVR to connect to VR)

Then run the ROS node.

```bash
roslaunch cohan_stage_navigation pr2_no_gz_WareHouse.launch
```

For speech integration, run the following
1. On linux: 

```bash
cd ECoHAN 
source devel/setup.bash
rosrun ecohan python speech_listen_llm_socket.py 
```

2. On windows, simultaneously run :
```bash
cd CoHAN_VR/Scripts/speech_to_text
python speech_recog.py
python receive_text_from_lin.py     #New terminal 
```
---

##  Common Issues

| Problem                  | Solution                                |
|--------------------------|------------------------------------------|
| Unity-ROS disconnect     | Set IP to 127.0.0.1 in ROSConnection.cs  |
| Lag in VR                | Lower Unity graphics settings            |
| CoHAN not planning       | Check local costmap size and update rate |
| Whisper not working      | Verify Python path and deps              |

---

## Author

**Shriram**, Research Intern – LAAS-CNRS  
Robotics | VR | ROS | HRI  
[LinkedIn](https://www.linkedin.com/in/shriram-hari-a4a678209/)

---

## References

- CoHAN 2.0 – Co-operative Human-Aware Navigation  
- HATeb Planner  
- Human-Aware Social Navigation Papers  
- Unity ROS TCP Connector
