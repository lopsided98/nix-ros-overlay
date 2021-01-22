
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslib }:
buildRosPackage {
  pname = "ros-kinetic-roscreate";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/kinetic/roscreate/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "286727378b5b57e90ef7e9b9f56de9d82110ee08f1ad8ac94c45a982568d5af1";
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
