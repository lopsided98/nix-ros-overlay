
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, gtest, proxsuite, python3, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-rolling-roboplan-oink";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_oink/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "de66cf920ed045dd379fd9ca55653143db0689020c6b8b7cf0d5ff109b1f8eb1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  checkInputs = [ ament-cmake-gmock gtest roboplan-example-models ];
  propagatedBuildInputs = [ proxsuite roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "OInK - Optimal Inverse Kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
