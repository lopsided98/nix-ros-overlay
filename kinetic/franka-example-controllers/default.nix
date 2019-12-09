
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, controller-interface, libfranka, dynamic-reconfigure, panda-moveit-config, pluginlib, franka-control, hardware-interface, catkin, franka-hw, message-runtime, franka-description, eigen, realtime-tools, rospy, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-franka-example-controllers";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_example_controllers/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "40806f66dfb7263fd2f893ac44bcbd621b1e124e87e19247aa90b74a55f69b2f";
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
