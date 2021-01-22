
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-typekit, kdl-typekit }:
buildRosPackage {
  pname = "ros-kinetic-rtt-geometry";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/rtt_geometry/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "657aec61968c68017d9d709633da8186a6fffc3eb93131655e495e28ac27e8d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen-typekit kdl-typekit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage contains tools for integrating the Orocos Kinematics and
    Dynamics Library (KDL) with the Orocos Toolchain and Real-Time Toolkit
    (RTT).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
