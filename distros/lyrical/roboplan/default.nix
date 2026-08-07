
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, eigen, gtest, pinocchio, python3, python3Packages, roboplan-example-models, tinyxml-2, tl-expected-nixpkgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-roboplan";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b0ef26feb9d0979dff1983fd5a08cb1e7da76b99cc2bfb2968d7d8f7eaf5abeb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest gtest roboplan-example-models ];
  propagatedBuildInputs = [ eigen pinocchio tinyxml-2 tl-expected-nixpkgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Core types, scene representation, and utilities for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
