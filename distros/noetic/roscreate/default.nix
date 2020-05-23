
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslib }:
buildRosPackage {
  pname = "ros-noetic-roscreate";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roscreate/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "f8a4841462a1e41be5366498052055442ab9990dfe0b8a9208052f16b4d11b71";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
