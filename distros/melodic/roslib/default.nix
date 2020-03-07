
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pythonPackages, ros-environment, rosmake, rospack }:
buildRosPackage {
  pname = "ros-melodic-roslib";
  version = "1.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/roslib/1.14.8-1.tar.gz";
    name = "1.14.8-1.tar.gz";
    sha256 = "b85d1a9f33ec7618c04a419d0402895cd7d2472e41243d231f1c6bde45ad4ea8";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  checkInputs = [ rosmake ];
  propagatedBuildInputs = [ catkin pythonPackages.rospkg ros-environment rospack ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
