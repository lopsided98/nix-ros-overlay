
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, catkin, diff-drive-controller, effort-controllers, force-torque-sensor-controller, forward-command-controller, gripper-action-controller, imu-sensor-controller, joint-state-controller, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/ros_controllers/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "be08d48674def6cab1ff7d3c9336505a31c657d3975b73d72a33b6b1898fb86f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ackermann-steering-controller diff-drive-controller effort-controllers force-torque-sensor-controller forward-command-controller gripper-action-controller imu-sensor-controller joint-state-controller joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
