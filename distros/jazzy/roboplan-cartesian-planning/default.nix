
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3, python3Packages, roboplan, roboplan-example-models, roboplan-oink, roboplan-toppra }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-cartesian-planning";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_cartesian_planning/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "c12ca9726d05ab619d2e1407af40cd20ac08c8e29a8a617520292cc8481b15e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  checkInputs = [ ament-cmake-gtest roboplan-example-models ];
  propagatedBuildInputs = [ roboplan roboplan-oink roboplan-toppra ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Cartesian path planner for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
