
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, rtt, eigen }:
buildRosPackage {
  pname = "ros-lunar-eigen-typekit";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/lunar/eigen_typekit/2.9.2-1.tar.gz;
    sha256 = "2f40c9556cbec99b5684393d8398ada17abf5ec07b44ad1c411947defc10b54c";
  };

  buildInputs = [ cmake-modules rtt eigen ];
  propagatedBuildInputs = [ rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Orocos typekit for Eigen types.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
