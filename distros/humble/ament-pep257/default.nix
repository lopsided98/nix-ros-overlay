
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-pep257";
  version = "0.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pep257/0.12.15-1.tar.gz";
    name = "0.12.15-1.tar.gz";
    sha256 = "f5098ab99dcae2d43cb7846a730e01047e15579338a8906cd647e1f7ead64482";
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
