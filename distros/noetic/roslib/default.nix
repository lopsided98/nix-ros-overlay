
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, python3Packages, ros-environment, rosmake, rospack }:
buildRosPackage {
  pname = "ros-noetic-roslib";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslib/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "0655caaa3dd5b82f6255c4b61c3c50244785f4ca8ef4ae352485fbdfc2ac208e";
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
