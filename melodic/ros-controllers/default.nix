
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, rqt-joint-trajectory-controller, velocity-controllers, joint-trajectory-controller, position-controllers, ackermann-steering-controller, imu-sensor-controller, effort-controllers, forward-command-controller, force-torque-sensor-controller, gripper-action-controller }:
buildRosPackage {
  pname = "ros-melodic-ros-controllers";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ros_controllers/0.14.3-0.tar.gz;
    sha256 = "e0790501bd5f7425160db3a88f8a7fef02fcaf46819c899f3cabb465f323f15f";
  };

  propagatedBuildInputs = [ joint-state-controller diff-drive-controller rqt-joint-trajectory-controller force-torque-sensor-controller velocity-controllers joint-trajectory-controller position-controllers ackermann-steering-controller imu-sensor-controller effort-controllers forward-command-controller gripper-action-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    #license = lib.licenses.BSD;
  };
}
