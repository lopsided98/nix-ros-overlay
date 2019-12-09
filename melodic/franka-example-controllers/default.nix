
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, controller-interface, libfranka, dynamic-reconfigure, panda-moveit-config, pluginlib, franka-control, hardware-interface, catkin, franka-hw, message-runtime, franka-description, eigen, realtime-tools, rospy, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-melodic-franka-example-controllers";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_example_controllers/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b897ffa8542fd6ddcd3c43da68b14966440df60d4821b6295236f56eae525ff7";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs controller-interface libfranka dynamic-reconfigure hardware-interface pluginlib franka-hw eigen realtime-tools roscpp message-generation ];
  propagatedBuildInputs = [ geometry-msgs controller-interface dynamic-reconfigure libfranka hardware-interface pluginlib message-runtime franka-control franka-hw franka-description realtime-tools rospy roscpp panda-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
