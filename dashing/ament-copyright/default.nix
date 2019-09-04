
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, ament-lint, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-dashing-ament-copyright";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_copyright/0.7.9-1.tar.gz;
    sha256 = "f610b168db22a6303e3ad0617a407c013d3e46071db96ecad6f62b5b05ba0d40";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ ament-lint ];

  meta = {
    description = ''The ability to check source files for copyright and license
    information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
