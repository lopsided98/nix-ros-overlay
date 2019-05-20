
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ocl, orocos-kdl, rtt }:
buildRosPackage {
  pname = "ros-lunar-kdl-typekit";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/lunar/kdl_typekit/2.9.2-1.tar.gz;
    sha256 = "cea407bd388cfcd3f298f99e71311fb42494cc0fe92e63c4732187a3a591ed66";
  };

  buildInputs = [ ocl orocos-kdl rtt ];
  propagatedBuildInputs = [ ocl orocos-kdl rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the KDL RTT bindings'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
