
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-filters, roscpp, rosgraph, rospy, rostest, std-msgs, tf2, tf2-msgs, tf2-py, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-tf2-ros";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_ros/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "8bcef4c019f02cd7cde89b34e4cce97ff5363bf68d6e2d17d0342b9ca4fb2f8a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-filters roscpp rosgraph rospy std-msgs tf2 tf2-msgs tf2-py xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the ROS bindings for the tf2 library, for both Python and C++.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
