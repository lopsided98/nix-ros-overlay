
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3, python3Packages, roboplan }:
buildRosPackage {
  pname = "ros-rolling-roboplan-simple-ik";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_simple_ik/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "cf6259e9093e216583840eec56eb034a48e8bae8641c1df893faeaf5cac473d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  propagatedBuildInputs = [ roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple inverse kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
