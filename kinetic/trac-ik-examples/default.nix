
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, pr2-description, boost, catkin, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik-examples";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik_examples/1.5.0-0.tar.gz;
    sha256 = "dd8a5a54972e9972f5d8e014f5802e305c42fb5f6ad8eb49caf423a89e6f11a8";
  };

  propagatedBuildInputs = [ trac-ik-lib orocos-kdl boost pr2-description xacro ];
  nativeBuildInputs = [ trac-ik-lib catkin orocos-kdl boost ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    #license = lib.licenses.BSD;
  };
}
