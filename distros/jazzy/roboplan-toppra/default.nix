
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-toppra";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_toppra/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "f092173711990ed8d73ed27b13c8243630d77a2d3149b7c69502f8884168895f";
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
