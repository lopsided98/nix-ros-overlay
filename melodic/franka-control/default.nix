
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, franka-gripper, franka-description, tf2-msgs, actionlib-msgs, actionlib, tf, geometry-msgs, realtime-tools, message-generation, message-runtime, robot-state-publisher, franka-hw, joint-state-publisher, catkin, controller-interface, franka-msgs, roscpp, controller-manager, pluginlib, sensor-msgs, libfranka }:
buildRosPackage {
  pname = "ros-melodic-franka-control";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_control/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "c4208eafa2862dfd1fcc04d96fef28e4af437c78503dff4765d4e251add9b9bd";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager tf2-msgs pluginlib actionlib-msgs realtime-tools sensor-msgs roscpp message-generation controller-interface franka-msgs actionlib libfranka franka-hw tf geometry-msgs ];
  propagatedBuildInputs = [ franka-description tf2-msgs franka-gripper actionlib-msgs actionlib tf geometry-msgs realtime-tools message-runtime robot-state-publisher franka-hw joint-state-publisher controller-interface franka-msgs roscpp controller-manager pluginlib sensor-msgs libfranka ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
