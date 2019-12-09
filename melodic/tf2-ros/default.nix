
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, message-filters, geometry-msgs, std-msgs, rosgraph, actionlib, catkin, roscpp, tf2-py, tf2-msgs, actionlib-msgs, tf2, rospy, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-tf2-ros";
  version = "0.6.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_ros/0.6.5-0.tar.gz";
    name = "0.6.5-0.tar.gz";
    sha256 = "f5ea730b28e1668228c151fec493a768164843aa867770570c93ba3dcbda2d0f";
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
