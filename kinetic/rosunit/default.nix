
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rosunit";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosunit/1.14.4-0.tar.gz;
    sha256 = "e40056824ecb1eed4a459da63a2290ae4c1813c4fb7e379cbda82e6499655bd2";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Unit-testing package for ROS. This is a lower-level library for rostest and handles unit tests, whereas rostest handles integration tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
