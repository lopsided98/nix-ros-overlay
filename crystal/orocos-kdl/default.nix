
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppunit, cmake, pkg-config, eigen }:
buildRosPackage {
  pname = "ros-crystal-orocos-kdl";
  version = "3.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/crystal/orocos_kdl/3.1.0-0.tar.gz;
    sha256 = "2c444773f68360b316d826a5bf7c0f12e9a3989d90eb2d350e703a6226a4303e";
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
