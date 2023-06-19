
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-pep257";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pep257/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "f0be66ca96cecb516e962c598d3888b02a9ad1716b4595dbfd907a2f18c4d70d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint python3Packages.pydocstyle ];

  meta = {
    description = ''The ability to check code against the docstring style conventions in
    PEP 257 and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
