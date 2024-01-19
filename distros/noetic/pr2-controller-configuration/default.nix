
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-manager, pr2-gripper-action, pr2-head-action, pr2-machine, robot-mechanism-controllers, roslaunch, single-joint-position-action }:
buildRosPackage {
  pname = "ros-noetic-pr2-controller-configuration";
  version = "1.6.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/pr2_controller_configuration/1.6.32-1.tar.gz";
    name = "1.6.32-1.tar.gz";
    sha256 = "80b94e8c30c4b63aef0b152254063ea36fc0bea7928d3e5ec94a3149c05c1eac";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ pr2-controller-manager pr2-gripper-action pr2-head-action pr2-machine robot-mechanism-controllers single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration files for PR2 controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
