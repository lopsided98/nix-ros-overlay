
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, ament-lint, ament-flake8, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-pep257";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pep257/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "6771ed2b955d8b1b29f05a8f671b1f3c8af062b652077fcf337a5e108894335d";
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
