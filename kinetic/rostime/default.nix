
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, boost }:
buildRosPackage {
  pname = "ros-kinetic-rostime";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/kinetic/rostime/0.6.11-0.tar.gz;
    sha256 = "40f47931b33a02d4740bebf2d9068911916d2ca13e3b78ea9e52164dade19a60";
  };

  propagatedBuildInputs = [ cpp-common boost ];
  nativeBuildInputs = [ catkin cpp-common boost ];

  meta = {
    description = ''Time and Duration implementations for C++ libraries, including roscpp.'';
    #license = lib.licenses.BSD;
  };
}
