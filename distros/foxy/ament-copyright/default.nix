
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-copyright";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_copyright/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "e995570db00f3a0d04e5cc732e3f6e7033be843aaf3a744086eb386a22fbdaa8";
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
