
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, franka-description, franka-gripper, franka-hw, franka-msgs, geometry-msgs, joint-state-publisher, joint-trajectory-controller, libfranka, pluginlib, realtime-tools, robot-state-publisher, roscpp, sensor-msgs, std-srvs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-franka-control";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_control/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "7738232b7ebcef907cd344e07e74803c74710ae5a2ab62539719a890a1761205";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface controller-manager franka-description franka-gripper franka-hw franka-msgs geometry-msgs joint-state-publisher joint-trajectory-controller libfranka pluginlib realtime-tools robot-state-publisher roscpp sensor-msgs std-srvs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
