
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-ament-package";
  version = "0.17.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/kilted/ament_package/0.17.2-2.tar.gz";
    name = "0.17.2-2.tar.gz";
    sha256 = "b88c7f573fae8eb6c24abab407c992d80a29f8018759e4e6dcdb1f1b2f4aea92";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = "The parser for the manifest files in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
