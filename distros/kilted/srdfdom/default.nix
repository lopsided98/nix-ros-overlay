
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml-2, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-kilted-srdfdom";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/srdfdom-release/archive/release/kilted/srdfdom/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "c72d5ff51f46a3e37ecbf2a229c201270aff9385d8f039d0538824fa9ad46039";
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
