
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, eigen-conversions, franka-control, franka-description, franka-gripper, franka-hw, geometry-msgs, hardware-interface, joint-limits-interface, libfranka, message-generation, message-runtime, pluginlib, realtime-tools, roscpp, rospy, tf, tf-conversions, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-franka-example-controllers";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_example_controllers/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "e2f67b536f923fe7b58c7d4f5da94a046f1ebdfbe59d88a3d19ba51c366ca2a5";
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
