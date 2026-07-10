
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, eigen, gtest, pinocchio, python3Packages, roboplan-example-models, tinyxml-2, tl-expected-nixpkgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-roboplan";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "2370ece4452bd40c1e30cd633237471a0d1678554bf1e384a9865f70e8de3739";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest gtest roboplan-example-models ];
  propagatedBuildInputs = [ eigen pinocchio python3Packages.nanobind tinyxml-2 tl-expected-nixpkgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Core types, scene representation, and utilities for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
