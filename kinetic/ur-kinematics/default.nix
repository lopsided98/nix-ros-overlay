
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, boost, catkin, moveit-kinematics, moveit-core, rospy, tf-conversions, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ur-kinematics";
  version = "1.2.5";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_kinematics/1.2.5-0.tar.gz";
    name = "1.2.5-0.tar.gz";
    sha256 = "e40c7d24ab7ecf1e7eabfa39319d47c88d07580e506b700d8f1bacb9e6e42950";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning pluginlib boost moveit-kinematics moveit-core tf-conversions roscpp geometry-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning pluginlib boost moveit-kinematics moveit-core rospy tf-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides forward and inverse kinematics for Universal Robots designs.
     See http://hdl.handle.net/1853/50782 for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
