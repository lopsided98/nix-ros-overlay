
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, orocos-kdl, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-examples";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_examples/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "e06f35faf15bdc5430b9a9e1b77f9426e4fc5ff3642862c0b5740fb125614838";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost orocos-kdl trac-ik-lib xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
