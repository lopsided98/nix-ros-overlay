
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-model, pr2-gripper-sensor-msgs, pluginlib, std-srvs, std-msgs, catkin, roslib, rosrt, pr2-controller-interface, realtime-tools, actionlib-msgs, roscpp, pr2-controllers-msgs, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gripper-sensor-controller";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/kinetic/pr2_gripper_sensor_controller/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "2fa4c1786cac35782374058671e0574802d58b64270c75f16a9fdfb8cef7d836";
  };

  buildType = "catkin";
  buildInputs = [ pr2-mechanism-model pr2-gripper-sensor-msgs pluginlib std-msgs std-srvs roslib rosrt pr2-controller-interface realtime-tools actionlib-msgs roscpp pr2-controllers-msgs pr2-controller-manager ];
  propagatedBuildInputs = [ pr2-mechanism-model pr2-gripper-sensor-msgs pluginlib std-srvs std-msgs roslib rosrt pr2-controller-interface realtime-tools actionlib-msgs roscpp pr2-controllers-msgs pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_controller package is a real-time controller that integrates signals from the PR2 hand-mounted accelerometer and finger-mounted pressure sensors with motor control of the gripper joint to do highly responsive sensing and low-latency closed-loop control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
