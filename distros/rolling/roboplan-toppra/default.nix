
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-rolling-roboplan-toppra";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_toppra/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0cb6bcadf2f2133a0090b4e06195b62cdf84446d41d4a0c1f5d4a046cae5f095";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest roboplan-example-models ];
  propagatedBuildInputs = [ python3Packages.nanobind roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Time Optimal Path Parameterization based on Reachability Analysis (TOPP-RA) wrapper for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
