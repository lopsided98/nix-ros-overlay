
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-ament-xmllint";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/ament_xmllint/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "6c0c578e58df6c88e60c28bb354ffb900a131000b69c25c0e83473d9549b8123";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint libxml2 ];

  meta = {
    description = ''The ability to check XML files like the package manifest using xmllint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
