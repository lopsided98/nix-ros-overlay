
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, ethercat-trigger-controllers, pr2-calibration-controllers, pr2-mechanism-controllers, pr2-head-action, joint-trajectory-action, control-toolbox, catkin, robot-mechanism-controllers, pr2-gripper-action, single-joint-position-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-controllers";
  version = "1.10.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_controllers/1.10.15-1.tar.gz;
    sha256 = "2d412c962cbfc58de7b38a1fc9c006e1598a72bb0457b124555ac973667e61d5";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs ethercat-trigger-controllers pr2-calibration-controllers pr2-mechanism-controllers pr2-head-action joint-trajectory-action control-toolbox robot-mechanism-controllers pr2-gripper-action single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the controllers that run in realtime on the PR2 and supporting packages.'';
    #license = lib.licenses.BSD;
  };
}
