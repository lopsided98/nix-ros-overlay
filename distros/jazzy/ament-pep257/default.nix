
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-pep257";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_pep257/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "d0283114bf2b29184ebf73b1ba6dc0623a76d5d09e2691bfa3284b38f69dcdc8";
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
