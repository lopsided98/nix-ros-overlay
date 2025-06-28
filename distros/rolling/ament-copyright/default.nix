
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-copyright";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_copyright/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "b9c049b3d1379e0961e05c2a9e8e20dd63a37d395586a6cd1ec0b44fff6a5a80";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-lint python3Packages.importlib-metadata ];

  meta = {
    description = "The ability to check source files for copyright and license
    information.";
    license = with lib.licenses; [ asl20 ];
  };
}
