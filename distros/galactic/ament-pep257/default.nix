
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-ament-pep257";
  version = "0.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/ament_pep257/0.10.7-1.tar.gz";
    name = "0.10.7-1.tar.gz";
    sha256 = "f09f82bb6948fdb12ad1357d071f4638dceaad0c7cc7f7fe5d42f29b6f0159de";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint python3Packages.pydocstyle ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
