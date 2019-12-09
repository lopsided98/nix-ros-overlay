
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, message-filters, geometry-msgs, std-msgs, rosgraph, actionlib, catkin, roscpp, tf2-py, tf2-msgs, actionlib-msgs, tf2, rospy, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-tf2-ros";
  version = "0.5.20";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_ros/0.5.20-0.tar.gz";
    name = "0.5.20-0.tar.gz";
    sha256 = "3d58943578731c5c4e80e60f1bf21ddc3184e2deb08372335e6ecfd897d91bb5";
  };

  buildType = "catkin";
  buildInputs = [ message-filters geometry-msgs std-msgs rosgraph actionlib roscpp tf2-py tf2-msgs actionlib-msgs tf2 rospy xmlrpcpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-filters geometry-msgs std-msgs rosgraph actionlib roscpp tf2-py tf2-msgs actionlib-msgs tf2 rospy xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
