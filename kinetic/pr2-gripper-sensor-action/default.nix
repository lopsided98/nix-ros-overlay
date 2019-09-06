
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, pr2-mechanism-controllers, actionlib-msgs, catkin, pr2-gripper-sensor-controller, robot-mechanism-controllers, pr2-gripper-sensor-msgs, message-generation, message-runtime, actionlib, pr2-machine, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gripper-sensor-action";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/kinetic/pr2_gripper_sensor_action/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "24be13b3393e46ceef69c366d5d03b359b442ab0293dd08bbfc6e6a0ac7dbe00";
  };

  buildType = "catkin";
  buildInputs = [ pr2-controllers-msgs pr2-mechanism-controllers actionlib-msgs pr2-gripper-sensor-controller robot-mechanism-controllers pr2-gripper-sensor-msgs message-generation actionlib pr2-machine roscpp pr2-mechanism-model ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-mechanism-controllers actionlib-msgs pr2-gripper-sensor-controller robot-mechanism-controllers pr2-gripper-sensor-msgs message-runtime actionlib pr2-machine roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_action package provides an action interface for talking to the pr2_gripper_sensor_controller real-time controller.

  It provides several different actions for getting high-level sensor information from the PR2 palm-mounted accelerometers, fingertip pressure arrays, and gripper motor/encoder, as well as several sensor-based gripper control actions that respond with low-latency in real-time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
