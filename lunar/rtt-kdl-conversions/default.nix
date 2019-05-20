
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, catkin, rtt }:
buildRosPackage {
  pname = "ros-lunar-rtt-kdl-conversions";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_kdl_conversions/2.9.2-1.tar.gz;
    sha256 = "ac3d00129592f473824a613f68cbcd8e184cc67b5824f631d2c73c30176362b3";
  };

  buildInputs = [ kdl-conversions rtt ];
  propagatedBuildInputs = [ kdl-conversions rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the components of the kdl_conversions package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
