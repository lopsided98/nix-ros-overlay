
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-combined-robot-hw-tests";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/combined_robot_hw_tests/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "57d0f45a1c83806f29f340d513773c30e96fc859e671e57bd212628574297db9";
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
