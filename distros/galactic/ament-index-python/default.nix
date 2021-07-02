
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-ament-index-python";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/galactic/ament_index_python/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "529abc3962dd0e80307be71ca3cd3946da25a988f328b2fad720abd63e02427a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Python API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
