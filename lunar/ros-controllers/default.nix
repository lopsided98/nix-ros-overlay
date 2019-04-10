
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, rqt-joint-trajectory-controller, velocity-controllers, joint-trajectory-controller, position-controllers, imu-sensor-controller, effort-controllers, forward-command-controller, force-torque-sensor-controller, gripper-action-controller }:
buildRosPackage {
  pname = "ros-lunar-ros-controllers";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/ros_controllers/0.13.4-0.tar.gz;
    sha256 = "02eef9c12509a23e002c825254dc695bfcd640ae09f8b9c92bed5855d38bc43e";
  };

  propagatedBuildInputs = [ joint-state-controller diff-drive-controller rqt-joint-trajectory-controller force-torque-sensor-controller velocity-controllers joint-trajectory-controller position-controllers imu-sensor-controller effort-controllers forward-command-controller gripper-action-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    #license = lib.licenses.BSD;
  };
}
