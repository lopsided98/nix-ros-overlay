
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-example-models";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_example_models/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "c14cc3f375c6ce523d3442118e142e7587acc51d70ae0512c7587573cc84ead2";
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
