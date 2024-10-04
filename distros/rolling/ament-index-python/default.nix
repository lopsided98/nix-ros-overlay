
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-index-python";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/rolling/ament_index_python/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "c5d4adb47eda65e93b7a43a2747cf1eb7abdaa9e23adb503e6d575d3192b96b1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "Python API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
