
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-roboplan-example-models";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_example_models/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "b950d3b994aba5615efbcdde818ab6d04a3e7e286b8bedb22538fe8aa91413f7";
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
