
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-copyright";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_copyright/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "d1293403fef4cae76bc5d9815f653ad56756e4dc1452e92918de779b501c5c9f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint python3Packages.importlib-metadata ];

  meta = {
    description = "The ability to check source files for copyright and license
    information.";
    license = with lib.licenses; [ asl20 ];
  };
}
