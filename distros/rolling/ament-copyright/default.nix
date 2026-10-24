
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-copyright";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_copyright/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "27e450708a2479aedc4cacf7e52857a83e56a6ea980df2993d2f16a53902f605";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-lint ];

  meta = {
    description = "The ability to check source files for copyright and license
    information.";
    license = with lib.licenses; [ asl20 ];
  };
}
