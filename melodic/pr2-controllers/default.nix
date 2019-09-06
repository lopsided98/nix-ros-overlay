
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, pr2-mechanism-controllers, ethercat-trigger-controllers, pr2-calibration-controllers, pr2-head-action, joint-trajectory-action, control-toolbox, catkin, robot-mechanism-controllers, pr2-gripper-action, single-joint-position-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_controllers/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "4ca1b1f88af452339502ec5babb46695425d6247dc2eab2e08a787fc4155bace";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-mechanism-controllers ethercat-trigger-controllers pr2-calibration-controllers pr2-head-action joint-trajectory-action control-toolbox robot-mechanism-controllers pr2-gripper-action single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the controllers that run in realtime on the PR2 and supporting packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
