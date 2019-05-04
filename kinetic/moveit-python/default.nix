
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, catkin, actionlib, rospy, moveit-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-python";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/mikeferguson/moveit_python-release/archive/release/kinetic/moveit_python/0.3.1-0.tar.gz;
    sha256 = "fe0f712901a877181b2f9642aa6e4fdcc377cfe9d5a33b4a327adcc59fd71b57";
  };

  propagatedBuildInputs = [ shape-msgs actionlib rospy moveit-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A pure-python interaface to the MoveIt! ROS API.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
