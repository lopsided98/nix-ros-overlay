
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-mypy";
  version = "0.20.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_mypy/0.20.6-1.tar.gz";
    name = "0.20.6-1.tar.gz";
    sha256 = "fc2c2e11df9d8ce2ae8a1426d3e8764eb76169d4cef0bb20a187f7603a6a5f47";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
