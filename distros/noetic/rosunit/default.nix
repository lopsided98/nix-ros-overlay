
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslib }:
buildRosPackage {
  pname = "ros-noetic-rosunit";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosunit/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "3c0025475094e240e2bbec9bda49241909b8f7e684001417da7de9f4e42cdd00";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Unit-testing package for ROS. This is a lower-level library for rostest and handles unit tests, whereas rostest handles integration tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
