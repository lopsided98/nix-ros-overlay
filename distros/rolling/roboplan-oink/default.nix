
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, gtest, osqp-vendor, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-rolling-roboplan-oink";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_oink/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "c2b93369334a32e2d71c95115a0f00d4b8c760244babf66e0d926e9472abc164";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock gtest roboplan-example-models ];
  propagatedBuildInputs = [ osqp-vendor python3Packages.nanobind roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "OInK - Optimal Inverse Kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
