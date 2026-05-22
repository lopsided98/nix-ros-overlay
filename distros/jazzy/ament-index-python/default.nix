
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-index-python";
  version = "1.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/jazzy/ament_index_python/1.8.4-1.tar.gz";
    name = "1.8.4-1.tar.gz";
    sha256 = "f998217ed4a9215efd0a5b4266397fce29ea482557786b013c08bc2de855c23b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
