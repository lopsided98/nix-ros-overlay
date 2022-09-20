
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, ethercat-trigger-controllers, joint-trajectory-action, pr2-calibration-controllers, pr2-controllers-msgs, pr2-gripper-action, pr2-head-action, pr2-mechanism-controllers, robot-mechanism-controllers, single-joint-position-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_controllers/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "4ca1b1f88af452339502ec5babb46695425d6247dc2eab2e08a787fc4155bace";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox ethercat-trigger-controllers joint-trajectory-action pr2-calibration-controllers pr2-controllers-msgs pr2-gripper-action pr2-head-action pr2-mechanism-controllers robot-mechanism-controllers single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the controllers that run in realtime on the PR2 and supporting packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
