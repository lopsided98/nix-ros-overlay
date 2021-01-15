
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, roscpp, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-video-stream-opencv";
  version = "1.1.5";

  src = fetchurl {
    url = "https://github.com/ros-drivers/video_stream_opencv-release/archive/release/kinetic/video_stream_opencv/1.1.5-0.tar.gz";
    name = "1.1.5-0.tar.gz";
    sha256 = "76b02cb8f5e67c4a53ce1f55bface4333292e0a2d84e710305c32d632bca7415";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport roscpp rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The video_stream_opencv package contains a node to publish a video stream (the protocols that
    opencv supports are supported, including rtsp, webcams on /dev/video and video files) in ROS image topics, it supports camera info and basic image flipping (horizontal, vertical or both) capabilities, also adjusting publishing rate.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
