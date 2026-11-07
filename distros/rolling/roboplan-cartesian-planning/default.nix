
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3, python3Packages, roboplan-common, roboplan-core, roboplan-example-models, roboplan-oink, roboplan-toppra }:
buildRosPackage {
  pname = "ros-rolling-roboplan-cartesian-planning";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_cartesian_planning/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "e475b8b065fb7b2fce96a97aa90ade039d9c4d290d6309f94570c99aa223ed6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind python3Packages.typing-extensions ];
  checkInputs = [ ament-cmake-gtest roboplan-example-models ];
  propagatedBuildInputs = [ roboplan-common roboplan-core roboplan-oink roboplan-toppra ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Cartesian path planner for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
