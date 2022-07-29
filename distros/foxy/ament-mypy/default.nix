
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-mypy";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_mypy/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "5cb77b532a22bef923c5b6ff2e12313970669837fe803be54dc517eb2711a59c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = ''Support for mypy static type checking in ament.'';
    license = with lib.licenses; [ asl20 ];
  };
}
