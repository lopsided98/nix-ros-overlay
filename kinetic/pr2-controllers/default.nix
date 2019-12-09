
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-head-action, ethercat-trigger-controllers, robot-mechanism-controllers, control-toolbox, joint-trajectory-action, catkin, pr2-mechanism-controllers, pr2-calibration-controllers, single-joint-position-action, pr2-controllers-msgs, pr2-gripper-action }:
buildRosPackage {
  pname = "ros-kinetic-pr2-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_controllers/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "cf43971a71c6964fe7e03fceda8caf9f53855ce43aa6d884b827b39e9b31f51d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-head-action ethercat-trigger-controllers robot-mechanism-controllers control-toolbox joint-trajectory-action pr2-mechanism-controllers pr2-calibration-controllers single-joint-position-action pr2-controllers-msgs pr2-gripper-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the controllers that run in realtime on the PR2 and supporting packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
