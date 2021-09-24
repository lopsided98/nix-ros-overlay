
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, eigen-conversions, franka-control, franka-description, franka-gripper, franka-hw, geometry-msgs, hardware-interface, libfranka, message-generation, message-runtime, panda-moveit-config, pluginlib, realtime-tools, roscpp, rospy, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-franka-example-controllers";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_example_controllers/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "bdc565b94ad6b72a600ffd05f54f32d6972a735b222d32ba6619ccb285fa54c6";
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
