
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-copyright";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_copyright/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "e09765b2cc40f9351e07e3fc2c6f5905220e869d7fc393c072f41df5f7fcb4b7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint ];

  meta = {
    description = ''The ability to check source files for copyright and license
    information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
