
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-copyright";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_copyright/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "a98549141a5d65e4a96220d861fb887253647d88438855404f2d7a4ae8ac7430";
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
