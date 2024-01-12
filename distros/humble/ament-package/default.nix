
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-package";
  version = "0.14.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/humble/ament_package/0.14.0-4.tar.gz";
    name = "0.14.0-4.tar.gz";
    sha256 = "7f1ea32fff4a703c6eafb5a3dd4956a4824adec8c612326099ac434c9af7d743";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
