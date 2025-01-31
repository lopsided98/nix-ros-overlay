
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml2-vendor, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-jazzy-srdfdom";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/srdfdom-release/archive/release/jazzy/srdfdom/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "d9c1e0ea93ebf1071514ce4beb8ae2bee9e8b5222012331edf64098089515370";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python boost urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml2-vendor urdf urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Parser for Semantic Robot Description Format (SRDF).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
