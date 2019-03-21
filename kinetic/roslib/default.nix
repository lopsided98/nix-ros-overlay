
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rospack, boost, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-roslib";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/roslib/1.14.4-0.tar.gz;
    sha256 = "8779ee249aeb2cbe9b9fc6a9b81f6ad4becfda9415c1bed8891ee7e7ecc8c5c6";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg ros-environment rospack catkin ];
  nativeBuildInputs = [ rospack catkin boost ];

  meta = {
    description = ''Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.'';
    #license = lib.licenses.BSD;
  };
}
