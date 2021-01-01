
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-combined-robot-hw";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/combined_robot_hw/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "b8d9eb13fa81e4f0bfc78554d16b7b4328469e6e1cb7a00ccd99f4f2288ef6b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
