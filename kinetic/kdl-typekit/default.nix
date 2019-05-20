
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ocl, orocos-kdl, rtt }:
buildRosPackage {
  pname = "ros-kinetic-kdl-typekit";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/kdl_typekit/2.9.2-1.tar.gz;
    sha256 = "3771138ddf14efe15b0a183b535a70eab4c9404c366f5582f50bb91a13b32784";
  };

  buildInputs = [ ocl orocos-kdl rtt ];
  propagatedBuildInputs = [ ocl orocos-kdl rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the KDL RTT bindings'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
