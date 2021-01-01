
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, chomp-motion-planner, cmake-modules, dynamic-reconfigure, eigen, eigen-conversions, message-filters, moveit-core, moveit-msgs, moveit-ros-perception, pluginlib, roscpp, srdfdom, tf, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "340ea962b6500af45eefec8c565926bbead74fbea972f0721241686701824cec";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen roscpp srdfdom urdf ];
  propagatedBuildInputs = [ actionlib chomp-motion-planner dynamic-reconfigure eigen-conversions message-filters moveit-core moveit-msgs moveit-ros-perception pluginlib tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
