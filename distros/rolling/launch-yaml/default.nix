
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-yaml";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_yaml/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "59c058bda9a1159145993e10a5f63c6dfae93392e50034374e60f1feba414ca2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''YAML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
