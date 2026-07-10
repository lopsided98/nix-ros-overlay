
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-roboplan-example-models";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_example_models/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4566da52d69b3832ab33c48f882ac60203614a213e315df040bb9e985aaa8f1e";
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
