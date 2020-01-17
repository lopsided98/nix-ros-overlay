
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-combined-robot-hw";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/combined_robot_hw/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "7e38dbeef1b656cd09fe29ed945315fde50cd4593ab867364a0fa6142b7499eb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
