
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-ament-index-python";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/kilted/ament_index_python/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "220636b9b553c62ab707afe2e38f385d8cc5ff53c97f54447e5049f852b31c2d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
