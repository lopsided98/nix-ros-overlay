
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-package";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/rolling/ament_package/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "6c95d5c847d2014267d57f49213a00bd5ae861d4437fd8b87764130b74e34ab2";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
