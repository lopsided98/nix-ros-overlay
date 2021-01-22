
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, catkin, cv-bridge, image-transport, message-generation, message-runtime, nodelet, roscpp, std-msgs, webrtc }:
buildRosPackage {
  pname = "ros-kinetic-webrtc-ros";
  version = "59.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/kinetic/webrtc_ros/59.0.4-1.tar.gz";
    name = "59.0.4-1.tar.gz";
    sha256 = "79b78d5d83144c42163507e3c1f9571f4a5f212725a17688d82ad00013d50dc4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ async-web-server-cpp cv-bridge image-transport message-runtime nodelet roscpp std-msgs webrtc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of ROS utilities for using WebRTC with ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
