
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, rtt }:
buildRosPackage {
  pname = "ros-kinetic-eigen-typekit";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/eigen_typekit/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "8ea1711c6e2e662b46cb7731d9c340590494c15e361d735dcde0f29c82efb7c2";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  propagatedBuildInputs = [ rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Orocos typekit for Eigen types.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
