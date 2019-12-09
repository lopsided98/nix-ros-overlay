
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages, ament-flake8, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-ament-pep257";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pep257/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "8115567c2cdbb3443668c6d12835b4be6555d440251ab37254004ec71500cf64";
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
