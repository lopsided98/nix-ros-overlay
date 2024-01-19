
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, franka-description, franka-gripper, franka-hw, franka-msgs, geometry-msgs, joint-state-publisher, joint-trajectory-controller, libfranka, pluginlib, realtime-tools, robot-state-publisher, roscpp, sensor-msgs, std-srvs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-franka-control";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_control/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "4954c523191d8507e67f2957ac8e77b51bba3ed3ebea34bc78afe864befcd3d0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface controller-manager franka-description franka-gripper franka-hw franka-msgs geometry-msgs joint-state-publisher joint-trajectory-controller libfranka pluginlib realtime-tools robot-state-publisher roscpp sensor-msgs std-srvs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
