
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, franka-description, franka-gripper, franka-hw, franka-msgs, geometry-msgs, joint-state-publisher, libfranka, pluginlib, realtime-tools, robot-state-publisher, roscpp, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-franka-control";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_control/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "cec412f212461dffb69f6b584da38f86a0d4e792a46f9765d220e39c34e0422e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface controller-manager franka-description franka-gripper franka-hw franka-msgs geometry-msgs joint-state-publisher libfranka pluginlib realtime-tools robot-state-publisher roscpp sensor-msgs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
