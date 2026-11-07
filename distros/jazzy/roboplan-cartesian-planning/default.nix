
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, python3, python3Packages, roboplan-common, roboplan-core, roboplan-example-models, roboplan-oink, roboplan-toppra }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-cartesian-planning";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_cartesian_planning/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "8bee156403a0bb3a7031ac0aa6908b44bb2e563bbb668b056b614e9a8c97ac29";
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
