
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages, ament-flake8, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-ament-pep257";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_pep257/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "7ae0918f4311d8eedcf671e09896786a0588e649799a75e4e084a0a1c1e59de3";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ament-lint python3Packages.pydocstyle ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
