
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, panda-moveit-config, hardware-interface, franka-description, pluginlib, realtime-tools, catkin, franka-control, controller-interface, message-generation, message-runtime, rospy, libfranka, franka-hw, dynamic-reconfigure, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-franka-example-controllers";
  version = "0.6.0-r1";

  src = fetchurl {
    url = https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_example_controllers/0.6.0-1.tar.gz;
    sha256 = "40806f66dfb7263fd2f893ac44bcbd621b1e124e87e19247aa90b74a55f69b2f";
  };

  buildInputs = [ hardware-interface pluginlib realtime-tools message-generation controller-interface dynamic-reconfigure libfranka franka-hw roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ panda-moveit-config hardware-interface franka-description pluginlib realtime-tools franka-control controller-interface message-runtime dynamic-reconfigure rospy franka-hw roscpp libfranka geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
