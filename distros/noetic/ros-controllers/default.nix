
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, catkin, diff-drive-controller, effort-controllers, force-torque-sensor-controller, forward-command-controller, gripper-action-controller, imu-sensor-controller, joint-state-controller, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/ros_controllers/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "bac3f1da240f5b39265e9dcb88e52785b0ce333be8d42fcaa5f6fd9dbaf99ad7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ackermann-steering-controller diff-drive-controller effort-controllers force-torque-sensor-controller forward-command-controller gripper-action-controller imu-sensor-controller joint-state-controller joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
