
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-index-python";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/rolling/ament_index_python/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "9bc4aca2f92b4c7542e982818d8a096684c3c2f5239542a892700f393d36f5ba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
