
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, eigen, gtest, pinocchio, python3Packages, roboplan-example-models, tinyxml2-vendor, tl-expected-nixpkgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-roboplan";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "55a394f48eac32c736b0dd6deb5541c60592748edf8834b9f682654018adcedb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest gtest roboplan-example-models ];
  propagatedBuildInputs = [ eigen pinocchio python3Packages.nanobind tinyxml2-vendor tl-expected-nixpkgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Core types, scene representation, and utilities for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
