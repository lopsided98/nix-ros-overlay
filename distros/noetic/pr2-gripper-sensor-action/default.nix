
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, pr2-controllers-msgs, pr2-gripper-sensor-controller, pr2-gripper-sensor-msgs, pr2-machine, pr2-mechanism-controllers, pr2-mechanism-model, robot-mechanism-controllers, roscpp }:
buildRosPackage {
  pname = "ros-noetic-pr2-gripper-sensor-action";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/noetic/pr2_gripper_sensor_action/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "13bb39024663b9f6c9816946a24e591ffda3c1a9d55306eab271a24f13cdbbf9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime pr2-controllers-msgs pr2-gripper-sensor-controller pr2-gripper-sensor-msgs pr2-machine pr2-mechanism-controllers pr2-mechanism-model robot-mechanism-controllers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_action package provides an action interface for talking to the pr2_gripper_sensor_controller real-time controller.

  It provides several different actions for getting high-level sensor information from the PR2 palm-mounted accelerometers, fingertip pressure arrays, and gripper motor/encoder, as well as several sensor-based gripper control actions that respond with low-latency in real-time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
