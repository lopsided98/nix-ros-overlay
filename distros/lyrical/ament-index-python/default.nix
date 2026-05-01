
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-index-python";
  version = "1.13.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/lyrical/ament_index_python/1.13.3-3.tar.gz";
    name = "1.13.3-3.tar.gz";
    sha256 = "9a4e4f14fa2da003390bd73c26bd659c421abdb4f22832197c4c918e4dfb3670";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
