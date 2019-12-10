
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, interactive-markers, moveit-ros-planning, pluginlib, roscpp, rosunit, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-robot-interaction";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_robot_interaction/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "aa8380b917a9d5f8083ee45adb8545f6c40f90bb9ad84e9289c0a4903af6e7a7";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen-conversions interactive-markers moveit-ros-planning pluginlib roscpp tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
