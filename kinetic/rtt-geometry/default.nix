
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-typekit, kdl-typekit }:
buildRosPackage {
  pname = "ros-kinetic-rtt-geometry";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/rtt_geometry/2.9.1-0.tar.gz;
    sha256 = "b8c738e4a6569d7d54a3b8201a70e91afe8708ca9acf62b8ba4b2ffe671cd168";
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
