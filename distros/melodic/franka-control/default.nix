
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, franka-description, franka-gripper, franka-hw, franka-msgs, geometry-msgs, joint-state-publisher, libfranka, pluginlib, realtime-tools, robot-state-publisher, roscpp, sensor-msgs, std-srvs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-franka-control";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_control/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "b74d6ef97b4ae7541aec33fb678128468091d6f2c33f9b37bce4fba12bbe37c2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface controller-manager franka-description franka-gripper franka-hw franka-msgs geometry-msgs joint-state-publisher libfranka pluginlib realtime-tools robot-state-publisher roscpp sensor-msgs std-srvs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
