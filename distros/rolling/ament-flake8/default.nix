
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-flake8";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_flake8/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "80b3c62c6dbec96c55f6f359273177fe2b63fa5cb25942f99d86a0bbd9360d79";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 python3Packages.flake8-blind-except python3Packages.flake8-class-newline python3Packages.flake8-deprecated python3Packages.flake8-docstrings python3Packages.flake8-import-order ];

  meta = {
    description = "The ability to check code for style and syntax conventions with flake8.";
    license = with lib.licenses; [ asl20 ];
  };
}
