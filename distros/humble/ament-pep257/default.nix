
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-pep257";
  version = "0.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pep257/0.12.14-1.tar.gz";
    name = "0.12.14-1.tar.gz";
    sha256 = "3d0845cdfe1687d275edc7c4fbaeeaf681d8b1737f588d732d1d654525a1fc2e";
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
