#!/bin/bash

# === CONFIG ===
TOPICS="/pr2_cam/image_compressed/compressed /vr/pose_combined /joint_states2 /human1/odom /odom /tf /tracked_agents"

# Create directory relative to current working directory
ROSBAG_DIR="$(pwd)/rosbags"
mkdir -p "$ROSBAG_DIR"
cd "$ROSBAG_DIR"

# Generate timestamped filename
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
BAG_NAME="rosbag_record_${TIMESTAMP}.bag"

# === SETUP ===

# Source ROS (Noetic assumed — adjust if using Melodic, etc.)
source /opt/ros/noetic/setup.bash

# Optional: source your workspace (if needed for msg types)
source ~/cohan2_ws/devel/setup.bash

# === RECORD ===
echo "Recording topics to $BAG_NAME in $ROSBAG_DIR"
rosbag record -O "$BAG_NAME" $TOPICS
