
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cppunit, eigen, eigen3-cmake-module, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-orocos-kdl";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/foxy/orocos_kdl/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "a76f67c07a0e87df041957dcd9bdf0c27f665038f597e0dd0b62ea3df8b575e4";
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
