
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, pluginlib, pr2-controller-interface, pr2-controller-manager, pr2-controllers-msgs, pr2-gripper-sensor-msgs, pr2-mechanism-model, realtime-tools, roscpp, roslib, rosrt, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-pr2-gripper-sensor-controller";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/noetic/pr2_gripper_sensor_controller/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "d733acc5d3fd5079f1cf1e7146d007d0c9adc907eb3371d9be2d3ba6c24acb47";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs pluginlib pr2-controller-interface pr2-controller-manager pr2-controllers-msgs pr2-gripper-sensor-msgs pr2-mechanism-model realtime-tools roscpp roslib rosrt std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_controller package is a real-time controller that integrates signals from the PR2 hand-mounted accelerometer and finger-mounted pressure sensors with motor control of the gripper joint to do highly responsive sensing and low-latency closed-loop control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
