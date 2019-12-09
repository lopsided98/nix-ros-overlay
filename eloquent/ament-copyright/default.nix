
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, ament-pep257, pythonPackages, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ament-copyright";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_copyright/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "2ada069308340340f66be0f3ba5d7bb23a8eb4c18994118b1cfd54f9423745f0";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ ament-lint ];

  meta = {
    description = ''The ability to check source files for copyright and license
    information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
