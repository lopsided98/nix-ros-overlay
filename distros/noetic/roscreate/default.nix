
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib }:
buildRosPackage {
  pname = "ros-noetic-roscreate";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roscreate/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "0cd12e40b3e5c68ccd1576f6b0f34be6fa0d98744105bb545d26f41b738d5ca6";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.rospkg roslib ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
