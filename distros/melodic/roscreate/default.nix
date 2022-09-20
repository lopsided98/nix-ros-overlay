
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslib }:
buildRosPackage {
  pname = "ros-melodic-roscreate";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/roscreate/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "5be3e124f93f53ad14096e6ae8d58bea596b7fe9850ed94e33295604a4987b26";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
