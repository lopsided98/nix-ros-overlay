
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, eigen-conversions, franka-control, franka-description, franka-gripper, franka-hw, geometry-msgs, hardware-interface, joint-limits-interface, libfranka, message-generation, message-runtime, pluginlib, realtime-tools, roscpp, rospy, tf, tf-conversions, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-franka-example-controllers";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_example_controllers/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "1426e5d1d07f8927638ae4e2ae82271f5e65746de4a53ab0d94b748ba041836b";
  };

  buildType = "catkin";
  buildInputs = [ eigen message-generation ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure eigen-conversions franka-control franka-description franka-gripper franka-hw geometry-msgs hardware-interface joint-limits-interface libfranka message-runtime pluginlib realtime-tools roscpp rospy tf tf-conversions urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
