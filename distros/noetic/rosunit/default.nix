
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib }:
buildRosPackage {
  pname = "ros-noetic-rosunit";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosunit/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "8a8a32d9a5b42badd7cae613892b2db4a72035923a4e2a369e34e1877b2fa433";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.rospkg roslib ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Unit-testing package for ROS. This is a lower-level library for rostest and handles unit tests, whereas rostest handles integration tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
