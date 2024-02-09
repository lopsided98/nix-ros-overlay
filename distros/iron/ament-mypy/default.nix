
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-mypy";
  version = "0.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_mypy/0.14.3-1.tar.gz";
    name = "0.14.3-1.tar.gz";
    sha256 = "99b289bb9028d4ff975441ce5081feb2e36e598aa117225ee81ed6b9254c5a4b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = ''Support for mypy static type checking in ament.'';
    license = with lib.licenses; [ asl20 ];
  };
}
