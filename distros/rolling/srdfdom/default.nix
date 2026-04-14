
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml-2, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-rolling-srdfdom";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/srdfdom-release/archive/release/rolling/srdfdom/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "69b2fa28134a64a92153c5139279a800b7bd5662c1f8a3b005d6ab404795387f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python boost urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml-2 urdf urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Parser for Semantic Robot Description Format (SRDF).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
