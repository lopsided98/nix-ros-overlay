
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, boost }:
buildRosPackage {
  pname = "ros-lunar-rostime";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/lunar/rostime/0.6.11-0.tar.gz;
    sha256 = "19ca329874ed6757b2f1ee74166584bf11a00ecb6a9a091bd2139f223bd84a8d";
  };

  buildInputs = [ cpp-common boost ];
  propagatedBuildInputs = [ cpp-common boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time and Duration implementations for C++ libraries, including roscpp.'';
    #license = lib.licenses.BSD;
  };
}
