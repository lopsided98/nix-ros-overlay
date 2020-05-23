
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-filters, roscpp, rosgraph, rospy, rostest, std-msgs, tf2, tf2-msgs, tf2-py, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-tf2-ros";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_ros/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "72a7b0b8a8cd4af364e481e468640a68a9549f37e9cad96ad9b9bb92bfe5b4cd";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-filters roscpp rosgraph rospy std-msgs tf2 tf2-msgs tf2-py xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
