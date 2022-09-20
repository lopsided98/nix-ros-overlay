
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, pluginlib, pr2-controller-interface, pr2-controller-manager, pr2-controllers-msgs, pr2-gripper-sensor-msgs, pr2-mechanism-model, realtime-tools, roscpp, roslib, rosrt, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-pr2-gripper-sensor-controller";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/melodic/pr2_gripper_sensor_controller/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "3e681c304070ead6e875be6fa66bf85ca38897dac7d332fbfab2714755b42c99";
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
