
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-manager, pr2-gripper-action, pr2-head-action, pr2-machine, robot-mechanism-controllers, roslaunch, single-joint-position-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-controller-configuration";
  version = "1.6.31-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/pr2_controller_configuration/1.6.31-1.tar.gz";
    name = "1.6.31-1.tar.gz";
    sha256 = "a7712dbec4dc9242e79c7539c21464675ecf6dedc5fd383195663a4edab8efc8";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ pr2-controller-manager pr2-gripper-action pr2-head-action pr2-machine robot-mechanism-controllers single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration files for PR2 controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
