
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-typekit, kdl-typekit }:
buildRosPackage {
  pname = "ros-kinetic-rtt-geometry";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/rtt_geometry/2.9.2-1.tar.gz;
    sha256 = "b2a117e941c1697270575dd5e475e24246f22cab44652485d758dbede9b4ac82";
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
