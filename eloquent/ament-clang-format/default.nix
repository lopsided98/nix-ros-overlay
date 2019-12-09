
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, python3Packages, ament-copyright, pythonPackages, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ament-clang-format";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_clang_format/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "b0bc3f445a8a617e3ba68ae09b55f9fa17ba8dc81ed1b65d05e8879a78ddb9e7";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.pyyaml clang ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-format and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
