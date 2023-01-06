
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-mypy";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_mypy/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "1f7362f503b5a4d1585bf06dcaffb691852a4b7f20380d161c89af6efb862a9c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = ''Support for mypy static type checking in ament.'';
    license = with lib.licenses; [ asl20 ];
  };
}
