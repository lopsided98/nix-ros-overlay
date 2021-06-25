
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml2-vendor, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-galactic-srdfdom";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/srdfdom-release/archive/release/galactic/srdfdom/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "85093ec96f860df084a864588c8be49480f8f05ac6ed74e93725b92ad366f518";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml2-vendor urdf urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
