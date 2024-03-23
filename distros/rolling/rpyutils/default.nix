
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-rpyutils";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rpyutils-release/archive/release/rolling/rpyutils/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "8406754e4cffc54e0852dfa3c091bef162765e00e0c47af8adc372a23d749000";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];

  meta = {
    description = "Package containing various utility types and functions for Python";
    license = with lib.licenses; [ asl20 ];
  };
}
