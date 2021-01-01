
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cppunit, eigen, eigen3-cmake-module, pkg-config }:
buildRosPackage {
  pname = "ros-dashing-orocos-kdl";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/dashing/orocos_kdl/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "61072cbc866ffd721f77117cda066cb5a0b5840b0841b773373708f84ca71f59";
  };

  buildType = "cmake";
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module pkg-config ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
