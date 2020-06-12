
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-mypy";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_mypy/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "a411c75f3d2bd9a6c03fa2bf0665ed0341af3430f4b6bad985630118b2552f7f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = ''Support for mypy static type checking in ament.'';
    license = with lib.licenses; [ asl20 ];
  };
}
