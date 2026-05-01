
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml-2, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-lyrical-srdfdom";
  version = "2.0.9-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/srdfdom-release/archive/release/lyrical/srdfdom/2.0.9-3.tar.gz";
    name = "2.0.9-3.tar.gz";
    sha256 = "95fc4cb0b5db459788d53cf74cda3700ac9f01e9615b3155aa534a7e71467eb0";
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
