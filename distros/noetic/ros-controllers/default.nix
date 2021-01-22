
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, catkin, diff-drive-controller, effort-controllers, force-torque-sensor-controller, forward-command-controller, gripper-action-controller, imu-sensor-controller, joint-state-controller, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/ros_controllers/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "12ff5d09f3611d3422985ec00bb0e246ee3d01c51a63326fe5ec0a3d3e8efc5c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ackermann-steering-controller diff-drive-controller effort-controllers force-torque-sensor-controller forward-command-controller gripper-action-controller imu-sensor-controller joint-state-controller joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
