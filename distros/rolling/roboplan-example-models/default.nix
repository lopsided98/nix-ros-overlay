
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-roboplan-example-models";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_example_models/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "7dfdfec7ee72ee5132e47b4d565335f111d3512a598fb345ca27e249379eac1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Robot descriptions for RoboPlan testing and examples.";
    license = with lib.licenses; [ mit ];
  };
}
