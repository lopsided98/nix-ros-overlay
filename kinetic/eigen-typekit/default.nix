
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, rtt, eigen }:
buildRosPackage {
  pname = "ros-kinetic-eigen-typekit";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/eigen_typekit/2.9.1-0.tar.gz;
    sha256 = "27b797eaba4c900709c89791c69663d1390d8e15330c98ecc82cf92044411384";
  };

  buildInputs = [ cmake-modules rtt eigen ];
  propagatedBuildInputs = [ rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Orocos typekit for Eigen types.'';
    #license = lib.licenses.LGPL;
  };
}
