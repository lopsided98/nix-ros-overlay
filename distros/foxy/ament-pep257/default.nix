
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-pep257";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_pep257/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "c71a73e6a150e58d0b57878d31bda0fdd7ad3b0d724bffb3d9dff32bf896531d";
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
