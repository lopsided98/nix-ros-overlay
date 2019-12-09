
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-gripper-sensor-controller, message-generation, pr2-mechanism-model, robot-mechanism-controllers, pr2-gripper-sensor-msgs, pr2-machine, actionlib, catkin, pr2-mechanism-controllers, actionlib-msgs, roscpp, pr2-controllers-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gripper-sensor-action";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/kinetic/pr2_gripper_sensor_action/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "24be13b3393e46ceef69c366d5d03b359b442ab0293dd08bbfc6e6a0ac7dbe00";
  };

  buildType = "catkin";
  buildInputs = [ pr2-gripper-sensor-controller pr2-mechanism-model robot-mechanism-controllers pr2-gripper-sensor-msgs pr2-machine actionlib pr2-mechanism-controllers actionlib-msgs roscpp pr2-controllers-msgs message-generation ];
  propagatedBuildInputs = [ pr2-gripper-sensor-controller pr2-mechanism-model robot-mechanism-controllers pr2-gripper-sensor-msgs pr2-machine actionlib pr2-mechanism-controllers actionlib-msgs roscpp pr2-controllers-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_action package provides an action interface for talking to the pr2_gripper_sensor_controller real-time controller.

  It provides several different actions for getting high-level sensor information from the PR2 palm-mounted accelerometers, fingertip pressure arrays, and gripper motor/encoder, as well as several sensor-based gripper control actions that respond with low-latency in real-time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
