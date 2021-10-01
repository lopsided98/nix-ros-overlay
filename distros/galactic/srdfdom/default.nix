
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml2-vendor, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-galactic-srdfdom";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/srdfdom-release/archive/release/galactic/srdfdom/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "d26208cbfe91d59104d357d18e53a55275f31d8208684688b22a271066334dcb";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml2-vendor urdf urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
