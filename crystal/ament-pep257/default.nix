
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-flake8, pythonPackages }:
buildRosPackage {
  pname = "ros-crystal-ament-pep257";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_pep257/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "43ef83c5ba4b2c52dc3894c4155efb794a7d376a69dc0b4142f6e3da22d61e59";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ python3Packages.pydocstyle ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
