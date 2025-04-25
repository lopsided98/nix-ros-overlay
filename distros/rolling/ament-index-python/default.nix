
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-index-python";
  version = "1.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/rolling/ament_index_python/1.10.2-1.tar.gz";
    name = "1.10.2-1.tar.gz";
    sha256 = "c0e9d2bd89133d8d937a6536434e9f296f500c1fbbe35eeb295253d3f19841cf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
