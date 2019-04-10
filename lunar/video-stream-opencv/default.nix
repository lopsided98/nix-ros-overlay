
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, cv-bridge, rospy, roscpp }:
buildRosPackage {
  pname = "ros-lunar-video-stream-opencv";
  version = "1.1.5";

  src = fetchurl {
    url = https://github.com/ros-drivers/video_stream_opencv-release/archive/release/lunar/video_stream_opencv/1.1.5-0.tar.gz;
    sha256 = "34e3b6edab1041aa55d54d8e924dbb69723d03f40a03e6b53d0e2db6d4b32995";
  };

  buildInputs = [ rospy camera-info-manager image-transport sensor-msgs cv-bridge roscpp ];
  propagatedBuildInputs = [ rospy camera-info-manager image-transport sensor-msgs cv-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The video_stream_opencv package contains a node to publish a video stream (the protocols that
    opencv supports are supported, including rtsp, webcams on /dev/video and video files) in ROS image topics, it supports camera info and basic image flipping (horizontal, vertical or both) capabilities, also adjusting publishing rate.'';
    #license = lib.licenses.BSD;
  };
}
