
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-combined-robot-hw";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/combined_robot_hw/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "b57f1ab96096e0d1f8ca5b47251e3a1cb9901f6b311488edda68b5178fa0af2a";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface pluginlib roscpp ];
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
