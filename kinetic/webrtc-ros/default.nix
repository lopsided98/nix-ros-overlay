
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, catkin, cv-bridge, image-transport, nodelet, roscpp, webrtc }:
buildRosPackage {
  pname = "ros-kinetic-webrtc-ros";
  version = "59.0.3";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/kinetic/webrtc_ros/59.0.3-0.tar.gz";
    name = "59.0.3-0.tar.gz";
    sha256 = "a8aafe6029f2c0bb249388524edfb8ba4616d6aa24ef17c925ff775fbe6832e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ async-web-server-cpp cv-bridge image-transport nodelet roscpp webrtc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of ROS utilities for using WebRTC with ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
