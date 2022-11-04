
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, catkin, cv-bridge, image-transport, message-generation, message-runtime, nodelet, roscpp, std-msgs, webrtc }:
buildRosPackage {
  pname = "ros-melodic-webrtc-ros";
  version = "59.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/melodic/webrtc_ros/59.0.4-1.tar.gz";
    name = "59.0.4-1.tar.gz";
    sha256 = "134243c7a0ebad22eec7f32cad62908716de537fce354fe1b8853478b58e862c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ async-web-server-cpp cv-bridge image-transport message-runtime nodelet roscpp std-msgs webrtc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of ROS utilities for using WebRTC with ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
