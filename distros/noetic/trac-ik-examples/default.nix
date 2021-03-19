
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, orocos-kdl, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-examples";
  version = "1.6.1-r6";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_examples/1.6.1-6.tar.gz";
    name = "1.6.1-6.tar.gz";
    sha256 = "c9821e136f5ad6139c4cc10166baf5316cf360e20dc31d390133098843d54a7b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost orocos-kdl trac-ik-lib xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
