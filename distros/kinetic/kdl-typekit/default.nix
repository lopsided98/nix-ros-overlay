
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ocl, orocos-kdl, rtt }:
buildRosPackage {
  pname = "ros-kinetic-kdl-typekit";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/kdl_typekit/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "598e4216da766c6080ba91ddd511ff371f27f5e1ad8fb1642469571ec50ace6f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ocl orocos-kdl rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the KDL RTT bindings'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
