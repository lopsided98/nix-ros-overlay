
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, python3Packages, ros-environment, rosmake, rospack }:
buildRosPackage {
  pname = "ros-noetic-roslib";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslib/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "2c52e7a295ff448b49af94a3103365f70c0dec77d42269cb89663fd404c5c5ea";
  };

  buildType = "catkin";
  buildInputs = [ boost python3Packages.setuptools ];
  checkInputs = [ rosmake ];
  propagatedBuildInputs = [ catkin python3Packages.rospkg ros-environment rospack ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
