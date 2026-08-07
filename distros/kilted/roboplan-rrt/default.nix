
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-kilted-roboplan-rrt";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_rrt/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "db8eba7098fc6c0d613215aadb0f268dcab68dde2d91fb047b2af1d5882063b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest roboplan-example-models ];
  propagatedBuildInputs = [ roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Rapidly-Exploring Random Tree (RRT) implementation for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
