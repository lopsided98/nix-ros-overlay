
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-msgs, catkin, message-filters, rospy, rostest, tf2, rosgraph, xmlrpcpp, actionlib, std-msgs, roscpp, tf2-py, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf2-ros";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_ros/0.6.5-0.tar.gz;
    sha256 = "f5ea730b28e1668228c151fec493a768164843aa867770570c93ba3dcbda2d0f";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2-msgs actionlib-msgs message-filters rospy tf2 rosgraph xmlrpcpp actionlib std-msgs roscpp tf2-py geometry-msgs ];
  nativeBuildInputs = [ tf2-msgs actionlib-msgs catkin message-filters rospy tf2 rosgraph xmlrpcpp actionlib std-msgs roscpp tf2-py geometry-msgs ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    #license = lib.licenses.BSD;
  };
}
