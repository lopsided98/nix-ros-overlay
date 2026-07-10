
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-example-models";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_example_models/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "5ec0947794e8753f22d7efb987ae8bd0192719b73d6e06a1432651e383eca472";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ python3Packages.nanobind ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Robot descriptions for RoboPlan testing and examples.";
    license = with lib.licenses; [ mit ];
  };
}
