
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ocl, orocos-kdl, rtt }:
buildRosPackage {
  pname = "ros-kinetic-kdl-typekit";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/kdl_typekit/2.9.1-0.tar.gz;
    sha256 = "1e4b5606f26d32ba7f0cb68caaa986117e21cd9aaa0e5a090ab415a530d6fbbc";
  };

  propagatedBuildInputs = [ ocl orocos-kdl rtt ];
  nativeBuildInputs = [ catkin ocl orocos-kdl rtt ];

  meta = {
    description = ''This package contains the KDL RTT bindings'';
    #license = lib.licenses.LGPL / BSD;
  };
}
