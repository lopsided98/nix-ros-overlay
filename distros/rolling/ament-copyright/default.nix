
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-copyright";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_copyright/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "8b6d8eadbdb7e4d4d7db4eb1e7215a57b5e696206edf1478cb60b2d55d24857d";
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
