
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, boost }:
buildRosPackage {
  pname = "ros-melodic-rostime";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/rostime/0.6.12-0.tar.gz;
    sha256 = "d99a7287aca9e4fad4aeae4c8fedfd9d69c8ccf7977b0488bd27d5c57c5fb208";
  };

  propagatedBuildInputs = [ cpp-common boost ];
  nativeBuildInputs = [ catkin cpp-common boost ];

  meta = {
    description = ''Time and Duration implementations for C++ libraries, including roscpp.'';
    #license = lib.licenses.BSD;
  };
}
