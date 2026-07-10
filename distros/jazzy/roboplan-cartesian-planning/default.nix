
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3Packages, roboplan, roboplan-example-models, roboplan-oink, roboplan-toppra }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-cartesian-planning";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_cartesian_planning/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "b092de797ae59ef186328f78a3e07fcba64e9fa1ca4e25c7c5ddb38c88b5f6d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest roboplan-example-models ];
  propagatedBuildInputs = [ python3Packages.nanobind roboplan roboplan-oink roboplan-toppra ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Cartesian path planner for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
