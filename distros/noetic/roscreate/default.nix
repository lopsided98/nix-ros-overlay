
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib }:
buildRosPackage {
  pname = "ros-noetic-roscreate";
  version = "1.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roscreate/1.15.4-1.tar.gz";
    name = "1.15.4-1.tar.gz";
    sha256 = "ed7dd2564d4f249bec2a811c028774ce4cd6c96e8d88ab5dcc5236fe79b1ac8c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg roslib ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
