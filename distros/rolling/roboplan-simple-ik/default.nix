
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages, roboplan }:
buildRosPackage {
  pname = "ros-rolling-roboplan-simple-ik";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_simple_ik/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "b955d05b320a7a50226aa3873589f111b4f1ba030bd0a43d588b5d9b48687a31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ python3Packages.nanobind roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple inverse kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
