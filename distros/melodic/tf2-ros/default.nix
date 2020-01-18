
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-filters, roscpp, rosgraph, rospy, rostest, std-msgs, tf2, tf2-msgs, tf2-py, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-tf2-ros";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_ros/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "542cfe5dae5ea30237dedd044ed957a87fe9dc77b6a35600654a724c84adced2";
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
