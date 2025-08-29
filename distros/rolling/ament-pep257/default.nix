
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pep257";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pep257/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "ab0f9b682157efa6d3393b62f22c63c5b2f815b836361e08b9c08b29e80855b5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-lint python3Packages.pydocstyle ];

  meta = {
    description = "The ability to check code against the docstring style conventions in
    PEP 257 and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
