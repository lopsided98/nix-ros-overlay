
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosunit";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/rosunit/1.14.6-0.tar.gz;
    sha256 = "145e8195fd8e46ec775d82e0c18aeb0b49e8dd20e9f042b454fecfd35044213a";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Unit-testing package for ROS. This is a lower-level library for rostest and handles unit tests, whereas rostest handles integration tests.'';
    #license = lib.licenses.BSD;
  };
}
