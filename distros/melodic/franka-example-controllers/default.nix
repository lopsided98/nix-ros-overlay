
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, eigen-conversions, franka-control, franka-description, franka-gripper, franka-hw, geometry-msgs, hardware-interface, libfranka, message-generation, message-runtime, moveit-commander, panda-moveit-config, pluginlib, realtime-tools, roscpp, rospy, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-franka-example-controllers";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_example_controllers/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "acf398158efcf23d060ae3499f528516ef146c2714739e66a60807ca02c6370d";
  };

  buildType = "catkin";
  buildInputs = [ eigen message-generation ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure eigen-conversions franka-control franka-description franka-gripper franka-hw geometry-msgs hardware-interface libfranka message-runtime moveit-commander panda-moveit-config pluginlib realtime-tools roscpp rospy tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
