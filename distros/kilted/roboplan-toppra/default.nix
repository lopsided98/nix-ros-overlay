
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-kilted-roboplan-toppra";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_toppra/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4e10048858cb3d7e66ae3fe1ff6dab127aac034bfebd21f76b3d67efc53f5165";
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
