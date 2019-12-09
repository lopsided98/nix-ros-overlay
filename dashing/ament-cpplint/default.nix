
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, pythonPackages, ament-flake8, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cpplint";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cpplint/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "857539f95ee16b8d2ebaa761b6427040ad2aa87e448302b85a64df7766c6f724";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];

  meta = {
    description = ''The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
