
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-combined-robot-hw-tests";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/combined_robot_hw_tests/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "5f87289aa9ced0b0e330057ffc545ef63bc02f8c535851d388420168c9580500";
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
