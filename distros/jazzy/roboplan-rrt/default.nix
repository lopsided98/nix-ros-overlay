
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-rrt";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_rrt/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "e8cc02f606e38a58ec7a116d5f7deb5aa4a4f461980cf785d7afe08d56b2ebfa";
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
