
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml2-vendor, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-rolling-srdfdom";
  version = "2.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/srdfdom-release/archive/release/rolling/srdfdom/2.0.4-3.tar.gz";
    name = "2.0.4-3.tar.gz";
    sha256 = "a3db9515081833bbfbc5ab507d0514e2807c42e4cbe0552d74b7f7cb0bf4ebe5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python boost urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml2-vendor urdf urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
