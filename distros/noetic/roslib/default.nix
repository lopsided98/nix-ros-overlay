
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, python3Packages, ros-environment, rosmake, rospack }:
buildRosPackage {
  pname = "ros-noetic-roslib";
  version = "1.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslib/1.15.4-1.tar.gz";
    name = "1.15.4-1.tar.gz";
    sha256 = "a823579f6a06906bf1be3fe2b41697c75854178448b23e237eb83eb179449236";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  checkInputs = [ rosmake ];
  propagatedBuildInputs = [ catkin python3Packages.rospkg ros-environment rospack ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
