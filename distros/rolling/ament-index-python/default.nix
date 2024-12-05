
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-index-python";
  version = "1.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/rolling/ament_index_python/1.10.1-1.tar.gz";
    name = "1.10.1-1.tar.gz";
    sha256 = "96cfdb67df3607a726ba854b79d1af3d018aa2a02d0fe0a4ed46744d3730fb6d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
