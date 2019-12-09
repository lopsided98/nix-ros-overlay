
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, pythonPackages, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ament-index-python";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/eloquent/ament_index_python/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "3ce109dcb02440602ace7ef73e811ad798c77febdd716f6db71430fab9401f18";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-pep257 ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
