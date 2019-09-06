
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, rqt-joint-trajectory-controller, velocity-controllers, joint-trajectory-controller, position-controllers, ackermann-steering-controller, imu-sensor-controller, effort-controllers, forward-command-controller, force-torque-sensor-controller, gripper-action-controller }:
buildRosPackage {
  pname = "ros-melodic-ros-controllers";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ros_controllers/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "829aba95b33c273faf7fe6e06f26abc2660fe9bb61e784751da72646c8fd0c06";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-controller diff-drive-controller rqt-joint-trajectory-controller force-torque-sensor-controller velocity-controllers joint-trajectory-controller position-controllers ackermann-steering-controller imu-sensor-controller effort-controllers forward-command-controller gripper-action-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
