
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, pr2-controllers-msgs, pr2-mechanism-controllers, pr2-mechanism-model, robot-mechanism-controllers, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gripper-action";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_gripper_action/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "46c0b777acdca5d11ebcce78f3bef3c5ef5110d6311c9b3bb905e5eb5532f494";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs pr2-controllers-msgs pr2-mechanism-controllers pr2-mechanism-model robot-mechanism-controllers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_action provides an action interface for using the
  gripper. Users can specify what position to move to (while limiting the
  force) and the action will report success when the position is reached or
  failure when the gripper cannot move any longer.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
