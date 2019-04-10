
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, pr2-description, boost, catkin, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-lunar-trac-ik-examples";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/traclabs/trac_ik-release/archive/release/lunar/trac_ik_examples/1.5.0-0.tar.gz;
    sha256 = "a9416a4854d4c25ce9be5edc40a9cf7b053184231b3999765e8d2d59bfa5894f";
  };

  buildInputs = [ trac-ik-lib orocos-kdl boost ];
  propagatedBuildInputs = [ trac-ik-lib orocos-kdl boost pr2-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    #license = lib.licenses.BSD;
  };
}
