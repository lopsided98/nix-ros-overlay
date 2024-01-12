
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-combined-robot-hw-tests";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/combined_robot_hw_tests/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "8d8f88b984a2e30f22fe4f6638006d92dc2fb6d6e587c7573f98da6ea4ebe936";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager-msgs controller-manager-tests rostest ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for the combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
