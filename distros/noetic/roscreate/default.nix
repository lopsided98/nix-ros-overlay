
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib }:
buildRosPackage {
  pname = "ros-noetic-roscreate";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roscreate/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "b0f1275e42d69528a798b2c4b11a11a4d256f48ff4059b95445e08ed7b58aaa8";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.rospkg roslib ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
