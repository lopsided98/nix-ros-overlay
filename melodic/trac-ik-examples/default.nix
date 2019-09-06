
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, boost, catkin, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-melodic-trac-ik-examples";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/melodic/trac_ik_examples/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "49d6aacadb0b51e61c60dfadbcb86be6408dd9887a126fb6db9b429f96d380c3";
  };

  buildType = "catkin";
  buildInputs = [ trac-ik-lib orocos-kdl boost ];
  propagatedBuildInputs = [ orocos-kdl trac-ik-lib boost xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
