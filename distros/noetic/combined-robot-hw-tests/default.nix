
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-combined-robot-hw-tests";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/combined_robot_hw_tests/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "9bbc883bd884879f0ac7149163189eb93e315d8bba74f0d7d3848263e4550636";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager-msgs controller-manager-tests rostest ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for the combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
