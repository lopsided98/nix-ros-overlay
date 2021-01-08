
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, catkin, diff-drive-controller, effort-controllers, force-torque-sensor-controller, forward-command-controller, gripper-action-controller, imu-sensor-controller, joint-state-controller, joint-trajectory-controller, position-controllers, rqt-joint-trajectory-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-kinetic-ros-controllers";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/ros_controllers/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "40caa31647c9b4739fa74fedb346fb0aa38bbb4ff163dd2762919512a56bae02";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ackermann-steering-controller diff-drive-controller effort-controllers force-torque-sensor-controller forward-command-controller gripper-action-controller imu-sensor-controller joint-state-controller joint-trajectory-controller position-controllers rqt-joint-trajectory-controller velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
