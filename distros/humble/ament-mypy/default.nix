
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-mypy";
  version = "0.12.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_mypy/0.12.13-1.tar.gz";
    name = "0.12.13-1.tar.gz";
    sha256 = "5b6214e3ecbb41a1644b76bc6381c80a2aae2a1007cd3926aca4860657923344";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
