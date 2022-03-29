
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cppunit, eigen, eigen3-cmake-module, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-orocos-kdl";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/foxy/orocos_kdl/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "98db0b3f2f98694048993f760461db36c01c9ee1cb2cf413ab061dd3882aa5cd";
  };

  buildType = "cmake";
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module pkg-config ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
