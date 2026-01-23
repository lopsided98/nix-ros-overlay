
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-mypy";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_mypy/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "6f7a0e238ef63408b5bd2c66c92ee1edab77f87ef5504ed7f0d1705f4b6dc691";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
