
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosunit";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosunit/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "3d8896cfa0f8b96666cc2749a7e3eb30a8ee522f76ff6b5282cbc1da5c2be81a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Unit-testing package for ROS. This is a lower-level library for rostest and handles unit tests, whereas rostest handles integration tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
