
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, camera-info-manager, catkin, image-transport, cv-bridge, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-video-stream-opencv";
  version = "1.1.5";

  src = fetchurl {
    url = "https://github.com/ros-drivers/video_stream_opencv-release/archive/release/melodic/video_stream_opencv/1.1.5-0.tar.gz";
    name = "1.1.5-0.tar.gz";
    sha256 = "ed2b46c502c9f63dbc62af074bbf0407d249c84f8509227ae5d2346204fe1186";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs camera-info-manager image-transport cv-bridge roscpp rospy ];
  propagatedBuildInputs = [ sensor-msgs camera-info-manager image-transport cv-bridge roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The video_stream_opencv package contains a node to publish a video stream (the protocols that
    opencv supports are supported, including rtsp, webcams on /dev/video and video files) in ROS image topics, it supports camera info and basic image flipping (horizontal, vertical or both) capabilities, also adjusting publishing rate.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
