
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-mypy";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_mypy/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "f600e94f1758fb291f010f0fb2d08bde5412bbaef9fde3aeff0ecbcc1a582472";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
