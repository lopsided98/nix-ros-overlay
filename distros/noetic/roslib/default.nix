
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, python3Packages, ros-environment, rosmake, rospack }:
buildRosPackage {
  pname = "ros-noetic-roslib";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslib/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "1f483ee2d435dc6f1f789e1e061bc5496b7057573f906ec0d67266bd87c9b3bb";
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
