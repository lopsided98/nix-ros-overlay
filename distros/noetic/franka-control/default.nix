
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, franka-description, franka-gripper, franka-hw, franka-msgs, geometry-msgs, joint-state-publisher, libfranka, pluginlib, realtime-tools, robot-state-publisher, roscpp, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-franka-control";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_control/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "c928b37af53e17d3a5a6ee81e4c1ba7481f0c1bdc56cd231af96a79dc2b621d9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface controller-manager franka-description franka-gripper franka-hw franka-msgs geometry-msgs joint-state-publisher libfranka pluginlib realtime-tools robot-state-publisher roscpp sensor-msgs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
