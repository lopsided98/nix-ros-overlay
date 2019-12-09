
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pkg-config, cppunit, eigen, cmake }:
buildRosPackage {
  pname = "ros-eloquent-orocos-kdl";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/eloquent/orocos_kdl/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "d443eb62f7b54ba46f4345ae68c84659d73036babcde0393988dbfedfd7b0a65";
  };

  buildType = "cmake";
  buildInputs = [ eigen ];
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ pkg-config eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
