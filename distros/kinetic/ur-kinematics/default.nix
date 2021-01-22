
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, moveit-core, moveit-kinematics, moveit-ros-planning, pluginlib, roscpp, rospy, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-ur-kinematics";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_kinematics/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "fdcfda231da8539f5f9703cf7629108bb9de9455d179abc5903a63ebbcfa2464";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost geometry-msgs moveit-core moveit-kinematics moveit-ros-planning pluginlib roscpp rospy tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides forward and inverse kinematics for Universal Robots designs.
     See http://hdl.handle.net/1853/50782 for details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
