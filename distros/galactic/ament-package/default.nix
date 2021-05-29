
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-ament-package";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/galactic/ament_package/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "dcf641a1b3db8b8173f1e979cc2f49cc41ac43365c04f72ba142f54476ea9f97";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
