
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, boost, xacro, catkin, trac-ik-lib }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-examples";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_examples/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "e06f35faf15bdc5430b9a9e1b77f9426e4fc5ff3642862c0b5740fb125614838";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl boost trac-ik-lib ];
  propagatedBuildInputs = [ orocos-kdl boost xacro trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
