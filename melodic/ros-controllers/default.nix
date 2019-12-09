
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, effort-controllers, ackermann-steering-controller, position-controllers, force-torque-sensor-controller, catkin, rqt-joint-trajectory-controller, imu-sensor-controller, diff-drive-controller, gripper-action-controller, joint-trajectory-controller, forward-command-controller, joint-state-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-ros-controllers";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ros_controllers/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "829aba95b33c273faf7fe6e06f26abc2660fe9bb61e784751da72646c8fd0c06";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ effort-controllers ackermann-steering-controller position-controllers force-torque-sensor-controller rqt-joint-trajectory-controller imu-sensor-controller diff-drive-controller gripper-action-controller joint-trajectory-controller forward-command-controller joint-state-controller velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
