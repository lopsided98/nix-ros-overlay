
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pep257";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pep257/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "aa7262af6cfa6187e74620120971208ed6df36e3de2c6d70bf235ee28b65651a";
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
