
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-manager, pr2-gripper-action, pr2-head-action, pr2-machine, robot-mechanism-controllers, roslaunch, single-joint-position-action }:
buildRosPackage {
  pname = "ros-kinetic-pr2-controller-configuration";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_controller_configuration/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "bb3509065f910c2abda25531a629b633338d577e409c4255636a5d2e4a63e80c";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ pr2-controller-manager pr2-gripper-action pr2-head-action pr2-machine robot-mechanism-controllers single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration files for PR2 controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
