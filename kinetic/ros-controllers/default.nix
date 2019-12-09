
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, effort-controllers, ackermann-steering-controller, position-controllers, force-torque-sensor-controller, catkin, rqt-joint-trajectory-controller, imu-sensor-controller, diff-drive-controller, gripper-action-controller, joint-trajectory-controller, forward-command-controller, joint-state-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-kinetic-ros-controllers";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/ros_controllers/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "8d593d537c640465ba826bac38818ecba4e3bf064b7f89857d1642f7c6c22e9d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ effort-controllers ackermann-steering-controller position-controllers force-torque-sensor-controller rqt-joint-trajectory-controller imu-sensor-controller diff-drive-controller gripper-action-controller joint-trajectory-controller forward-command-controller joint-state-controller velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
