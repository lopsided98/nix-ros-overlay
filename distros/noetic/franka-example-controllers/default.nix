
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, eigen-conversions, franka-control, franka-description, franka-gripper, franka-hw, geometry-msgs, hardware-interface, libfranka, message-generation, message-runtime, panda-moveit-config, pluginlib, realtime-tools, roscpp, rospy, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-noetic-franka-example-controllers";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_example_controllers/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "dbed2239cd51deddb45df921ea510e5e0fb0da78fca098bf1aff2f05000cebe8";
  };

  buildType = "catkin";
  buildInputs = [ eigen message-generation ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure eigen-conversions franka-control franka-description franka-gripper franka-hw geometry-msgs hardware-interface libfranka message-runtime panda-moveit-config pluginlib realtime-tools roscpp rospy tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
