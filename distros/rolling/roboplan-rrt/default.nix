
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-rolling-roboplan-rrt";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_rrt/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3005697d442b454d08779eba6fee73563ac62ae6dd6875ae2464294a5c9619c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest roboplan-example-models ];
  propagatedBuildInputs = [ python3Packages.nanobind roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Rapidly-Exploring Random Tree (RRT) implementation for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
