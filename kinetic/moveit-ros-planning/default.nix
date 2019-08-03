
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, tf, srdfdom, catkin, message-filters, eigen-conversions, urdf, tf-conversions, moveit-core, actionlib, moveit-ros-perception, moveit-msgs, dynamic-reconfigure, roscpp, chomp-motion-planner, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning";
  version = "0.9.17-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning/0.9.17-1.tar.gz;
    sha256 = "d048c85d344a24105ee4e4fa81ef0e12e325d96dbc94888a932ab869ee90794a";
  };

  buildInputs = [ pluginlib cmake-modules srdfdom message-filters roscpp actionlib moveit-core urdf dynamic-reconfigure moveit-ros-perception moveit-msgs eigen-conversions tf tf-conversions chomp-motion-planner eigen ];
  propagatedBuildInputs = [ pluginlib message-filters actionlib moveit-core tf-conversions dynamic-reconfigure moveit-ros-perception moveit-msgs eigen-conversions tf chomp-motion-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
