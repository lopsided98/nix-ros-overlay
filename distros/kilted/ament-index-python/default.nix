
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-ament-index-python";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/kilted/ament_index_python/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "12a1e334f8d4ebe5019161c1bed732d83b9033e6fc4ab0f0e1e10e77d4d855f9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
