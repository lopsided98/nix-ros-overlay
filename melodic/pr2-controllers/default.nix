
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, ethercat-trigger-controllers, pr2-calibration-controllers, pr2-mechanism-controllers, pr2-head-action, joint-trajectory-action, control-toolbox, catkin, robot-mechanism-controllers, pr2-gripper-action, single-joint-position-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-controllers";
  version = "1.10.16-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_controllers/1.10.16-1.tar.gz;
    sha256 = "efa0912d9c9d659ae93028aa2c9d77ec6f86df760c0788d69433834051607da8";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs ethercat-trigger-controllers pr2-calibration-controllers pr2-mechanism-controllers pr2-head-action joint-trajectory-action control-toolbox robot-mechanism-controllers pr2-gripper-action single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the controllers that run in realtime on the PR2 and supporting packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
