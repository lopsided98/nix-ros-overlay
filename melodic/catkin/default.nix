
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, cmake, gmock }:
buildRosPackage {
  pname = "ros-melodic-catkin";
  version = "0.7.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/catkin-release/archive/release/melodic/catkin/0.7.19-1.tar.gz";
    name = "0.7.19-1.tar.gz";
    sha256 = "10d50731008b2ab232a17cd1717d0b81d75d175b6f4b99a2e28ed4acc59df055";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gtest cmake gmock ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
