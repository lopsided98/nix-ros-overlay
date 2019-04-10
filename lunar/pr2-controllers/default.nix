
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, ethercat-trigger-controllers, pr2-calibration-controllers, pr2-mechanism-controllers, pr2-head-action, joint-trajectory-action, control-toolbox, catkin, robot-mechanism-controllers, pr2-gripper-action, single-joint-position-action }:
buildRosPackage {
  pname = "ros-lunar-pr2-controllers";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/pr2_controllers/1.10.15-0.tar.gz;
    sha256 = "e6527eb3e0890196b56f97a587a8f83742a1e93e0d24ace28393377414fa499e";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs ethercat-trigger-controllers pr2-calibration-controllers pr2-mechanism-controllers pr2-head-action joint-trajectory-action control-toolbox robot-mechanism-controllers pr2-gripper-action single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the controllers that run in realtime on the PR2 and supporting packages.'';
    #license = lib.licenses.BSD;
  };
}
