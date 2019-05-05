
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-msgs, catkin, message-filters, tf2, rostest, std-msgs, rosgraph, xmlrpcpp, actionlib, rospy, roscpp, tf2-py, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2-ros";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_ros/0.5.20-0.tar.gz;
    sha256 = "998731690753d709f2cd218a7e3710ea12ec2247d45d49a5ebecd09f5a80b6fe";
  };

  buildInputs = [ tf2-msgs actionlib-msgs message-filters rospy tf2 rosgraph xmlrpcpp actionlib std-msgs roscpp tf2-py geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2-msgs actionlib-msgs message-filters rospy tf2 rosgraph xmlrpcpp actionlib std-msgs roscpp tf2-py geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
