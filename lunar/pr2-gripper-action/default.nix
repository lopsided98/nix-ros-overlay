
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, pr2-mechanism-controllers, actionlib-msgs, catkin, robot-mechanism-controllers, actionlib, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-lunar-pr2-gripper-action";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/pr2_gripper_action/1.10.15-0.tar.gz;
    sha256 = "863518298fab141c14c8a3f937098759cb138d76444ce5f63e011a526f3f2e58";
  };

  buildInputs = [ pr2-controllers-msgs pr2-mechanism-controllers actionlib-msgs actionlib roscpp pr2-mechanism-model robot-mechanism-controllers ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-mechanism-controllers actionlib-msgs actionlib roscpp pr2-mechanism-model robot-mechanism-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_action provides an action interface for using the
  gripper. Users can specify what position to move to (while limiting the
  force) and the action will report success when the position is reached or
  failure when the gripper cannot move any longer.'';
    #license = lib.licenses.BSD;
  };
}
