
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, cppunit, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-orocos-kdl";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/smits/orocos-kdl-release/archive/release/kinetic/orocos_kdl/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "c5fcde3d4ed405b87566a24f7833dd03a5e1fa0eb11ec1831ed91a4448871ab0";
  };

  buildType = "cmake";
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ catkin eigen pkg-config ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
