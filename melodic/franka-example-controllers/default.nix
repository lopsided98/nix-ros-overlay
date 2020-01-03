
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, franka-control, franka-description, franka-hw, geometry-msgs, hardware-interface, libfranka, message-generation, message-runtime, panda-moveit-config, pluginlib, realtime-tools, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-franka-example-controllers";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_example_controllers/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b897ffa8542fd6ddcd3c43da68b14966440df60d4821b6295236f56eae525ff7";
  };

  buildType = "catkin";
  buildInputs = [ eigen message-generation ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure franka-control franka-description franka-hw geometry-msgs hardware-interface libfranka message-runtime panda-moveit-config pluginlib realtime-tools roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
