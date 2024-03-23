
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-mypy";
  version = "0.12.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_mypy/0.12.10-1.tar.gz";
    name = "0.12.10-1.tar.gz";
    sha256 = "227367712be3cf75c48bb8645036383ccc342e523b6742d639a7f10b2bb0521c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
