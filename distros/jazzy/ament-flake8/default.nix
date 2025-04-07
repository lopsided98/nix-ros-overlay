
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-flake8";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_flake8/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "7889cf54cded4bd0954338403ea0c52b0ba41872985c1ae25def89f023cce874";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 python3Packages.flake8-docstrings python3Packages.flake8-import-order ];

  meta = {
    description = "The ability to check code for style and syntax conventions with flake8.";
    license = with lib.licenses; [ asl20 ];
  };
}
