
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib }:
buildRosPackage {
  pname = "ros-noetic-rosunit";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosunit/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "37e53948063c7b37e461483fe40ae12168dc83f0a4211a40adc9aa8a809ed45f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg roslib ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Unit-testing package for ROS. This is a lower-level library for rostest and handles unit tests, whereas rostest handles integration tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
