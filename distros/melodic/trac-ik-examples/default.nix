
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, orocos-kdl, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-melodic-trac-ik-examples";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/melodic/trac_ik_examples/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "c04e9f5a860f562ce0d1e044723198ffa560d2f3ac815bdc4da79a7da8a4e40f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost orocos-kdl trac-ik-lib xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the source code for testing and comparing trac_ik'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
