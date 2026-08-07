
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3, python3Packages, roboplan, roboplan-example-models, toppra }:
buildRosPackage {
  pname = "ros-rolling-roboplan-toppra";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_toppra/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ff0be00551216167992a7a5d95ee72576dacb92e61354a0a87deaa99ff56c544";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  checkInputs = [ ament-cmake-gtest roboplan-example-models ];
  propagatedBuildInputs = [ roboplan toppra ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Time Optimal Path Parameterization based on Reachability Analysis (TOPP-RA) wrapper for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
