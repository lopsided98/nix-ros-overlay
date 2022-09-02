
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, franka-description, franka-gripper, franka-hw, franka-msgs, geometry-msgs, joint-state-publisher, joint-trajectory-controller, libfranka, pluginlib, realtime-tools, robot-state-publisher, roscpp, sensor-msgs, std-srvs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-franka-control";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_control/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "409e777e65b8003578ee54df9fe57b6422ce4d710aa6cc93624b92df74bca6cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface controller-manager franka-description franka-gripper franka-hw franka-msgs geometry-msgs joint-state-publisher joint-trajectory-controller libfranka pluginlib realtime-tools robot-state-publisher roscpp sensor-msgs std-srvs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
