
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, roscpp, rospy, rostest, rostopic, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-video-stream-opencv";
  version = "1.1.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers";
        repo = "video_stream_opencv-release";
        rev = "release/noetic/video_stream_opencv/1.1.6-1";
        sha256 = "sha256-mmYU4wI52SzjtL5nXKOY5jdySp1hq1esfqPUm8h1fPY=";
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
