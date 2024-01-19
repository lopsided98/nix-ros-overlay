
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, nlopt, orocos-kdl, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-examples";
  version = "1.6.6-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_examples/1.6.6-1.tar.gz";
    name = "1.6.6-1.tar.gz";
    sha256 = "7e165764159a0cd77fa86d802a164a901bb79057257d9e3183782dd350f624ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost nlopt orocos-kdl trac-ik-lib xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
