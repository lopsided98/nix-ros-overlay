
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, eigen, gtest, pinocchio, python3, python3Packages, roboplan-example-models, tinyxml2-vendor, tl-expected-nixpkgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-roboplan";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ce5154ca6b8a796559744a95bc983d1260634460e92870e4a46c94b9789befc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest gtest roboplan-example-models ];
  propagatedBuildInputs = [ eigen pinocchio tinyxml2-vendor tl-expected-nixpkgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Core types, scene representation, and utilities for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
