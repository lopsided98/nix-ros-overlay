
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, rtt, eigen }:
buildRosPackage {
  pname = "ros-kinetic-eigen-typekit";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/eigen_typekit/2.9.2-1.tar.gz;
    sha256 = "d2016dd487b06d664e04aa8f35a98f5179ab45afa25111ffde1b4f421a343447";
  };

  buildInputs = [ cmake-modules rtt eigen ];
  propagatedBuildInputs = [ rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Orocos typekit for Eigen types.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
