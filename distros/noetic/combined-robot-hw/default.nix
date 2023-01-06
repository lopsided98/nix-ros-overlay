
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-combined-robot-hw";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/combined_robot_hw/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "2ce6f5eb92e2f715af90b0500bf4755752c1c44bf4da512476bb5a0152dbf76d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
