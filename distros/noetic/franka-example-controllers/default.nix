
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, eigen-conversions, franka-control, franka-description, franka-gripper, franka-hw, geometry-msgs, hardware-interface, libfranka, message-generation, message-runtime, moveit-commander, panda-moveit-config, pluginlib, realtime-tools, roscpp, rospy, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-noetic-franka-example-controllers";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_example_controllers/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "0d58c4cdf6e937bbb57245cffdf4b76787c9f9ef76f2c1581cc3285a77416fb8";
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
