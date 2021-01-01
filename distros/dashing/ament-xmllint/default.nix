
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-ament-xmllint";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_xmllint/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "d0b1e50611c1e92f6c6ce70f1ce2f40073d0ea1333422a8d0c18d622608955b6";
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
