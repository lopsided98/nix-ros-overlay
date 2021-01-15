
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, franka-control, franka-description, franka-hw, geometry-msgs, hardware-interface, libfranka, message-generation, message-runtime, panda-moveit-config, pluginlib, realtime-tools, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-franka-example-controllers";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_example_controllers/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "40806f66dfb7263fd2f893ac44bcbd621b1e124e87e19247aa90b74a55f69b2f";
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
