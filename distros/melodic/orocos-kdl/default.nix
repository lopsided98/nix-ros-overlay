
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, cppunit, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-orocos-kdl";
  version = "1.4.0";

  src = fetchurl {
    url = "https://github.com/orocos/orocos-kdl-release/archive/release/melodic/orocos_kdl/1.4.0-0.tar.gz";
    name = "1.4.0-0.tar.gz";
    sha256 = "aa01563f804f8c52c6403b872b0a321abd916083757aebf25ac9530c7798830a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ catkin eigen pkg-config ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
