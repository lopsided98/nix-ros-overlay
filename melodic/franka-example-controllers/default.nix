
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, panda-moveit-config, hardware-interface, franka-description, pluginlib, realtime-tools, catkin, franka-control, controller-interface, message-generation, message-runtime, rospy, libfranka, franka-hw, dynamic-reconfigure, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-franka-example-controllers";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_example_controllers/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b897ffa8542fd6ddcd3c43da68b14966440df60d4821b6295236f56eae525ff7";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface pluginlib realtime-tools message-generation controller-interface dynamic-reconfigure libfranka franka-hw roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ panda-moveit-config hardware-interface franka-description pluginlib realtime-tools franka-control controller-interface message-runtime dynamic-reconfigure rospy franka-hw roscpp libfranka geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
