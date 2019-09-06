
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-roscreate";
  version = "1.14.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/roscreate/1.14.6-0.tar.gz";
    name = "1.14.6-0.tar.gz";
    sha256 = "00feca079aa2df6b49f19098c964312824216bffc015e1d64d1960df066ddcc4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
