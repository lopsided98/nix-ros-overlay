
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, roscpp, rospy, rostest, rostopic, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-video-stream-opencv";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers/video_stream_opencv-release/archive/release/melodic/video_stream_opencv/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "a2fbecdf05b636214d3559aeffcee22617506d2924fde4b1d7ad3d9e527d1321";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rostopic ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport nodelet roscpp rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The video_stream_opencv package contains a node to publish a video stream (the protocols that
    opencv supports are supported, including rtsp, webcams on /dev/video and video files) in ROS image topics, it supports camera info and basic image flipping (horizontal, vertical or both) capabilities, also adjusting publishing rate.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
