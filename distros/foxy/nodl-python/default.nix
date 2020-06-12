
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-foxy-nodl-python";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/canonical/nodl-release/archive/release/foxy/nodl_python/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ad42d5302bfad964aa8c68931d6da7e1db73e9b708cff774ba31262b10499cca";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.lxml rclpy ];

  meta = {
    description = ''Implementation of the NoDL API in Python.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
