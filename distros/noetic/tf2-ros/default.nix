
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-filters, roscpp, rosgraph, rospy, rostest, std-msgs, tf2, tf2-msgs, tf2-py, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-tf2-ros";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_ros/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "fe50111c31e84f664f557a9321198630f99c853fddd2949215c346ac8244aded";
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
