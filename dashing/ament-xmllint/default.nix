
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, ament-flake8, libxml2, pythonPackages, ament-pep257, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-xmllint";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_xmllint/0.7.9-1.tar.gz;
    sha256 = "9175fbcafaa33f07bcf9da61218d7ff721807f2a13d86d4af29e50f2fcd4ffe5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ ament-lint libxml2 ];

  meta = {
    description = ''The ability to check XML files like the package manifest using xmllint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
