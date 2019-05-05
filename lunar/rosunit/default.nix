
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-rosunit";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/rosunit/1.14.4-0.tar.gz;
    sha256 = "74ec059ea55658011f039630ba7028b4ceb7222096ad038a32f38786d5767624";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Unit-testing package for ROS. This is a lower-level library for rostest and handles unit tests, whereas rostest handles integration tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
