
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, gtest, python3, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-oink";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_oink/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "3414e8c34cb0d04f9bdbbd032a9ea6fcee93d4f933e48a651c2ae30c3a355ac9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  checkInputs = [ ament-cmake-gmock gtest roboplan-example-models ];
  propagatedBuildInputs = [ roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "OInK - Optimal Inverse Kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
