
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-typekit, kdl-typekit }:
buildRosPackage {
  pname = "ros-lunar-rtt-geometry";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/lunar/rtt_geometry/2.9.2-1.tar.gz;
    sha256 = "0f490344716aea2389686200bb58f309ea524459f7a709342a544dbc8369c7c3";
  };

  propagatedBuildInputs = [ eigen-typekit kdl-typekit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage contains tools for integrating the Orocos Kinematics and
    Dynamics Library (KDL) with the Orocos Toolchain and Real-Time Toolkit
    (RTT).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
