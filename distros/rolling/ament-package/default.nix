
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-package";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/rolling/ament_package/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "a66c5241a8645b215a18386844945979d173376a085aa36d55a0a06e77bdfc3c";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
