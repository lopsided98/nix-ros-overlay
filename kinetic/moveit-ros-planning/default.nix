
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, message-filters, srdfdom, urdf, eigen-conversions, dynamic-reconfigure, pluginlib, tf, catkin, actionlib, cmake-modules, moveit-ros-perception, eigen, chomp-motion-planner, moveit-msgs, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "d048c85d344a24105ee4e4fa81ef0e12e325d96dbc94888a932ab869ee90794a";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core message-filters srdfdom urdf eigen-conversions dynamic-reconfigure pluginlib actionlib tf cmake-modules moveit-ros-perception eigen chomp-motion-planner moveit-msgs roscpp tf-conversions ];
  propagatedBuildInputs = [ moveit-core message-filters dynamic-reconfigure eigen-conversions pluginlib actionlib tf moveit-ros-perception chomp-motion-planner moveit-msgs tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
