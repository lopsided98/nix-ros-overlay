
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-ament-package";
  version = "0.16.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/jazzy/ament_package/0.16.3-3.tar.gz";
    name = "0.16.3-3.tar.gz";
    sha256 = "6ca31466dc402c4871c704a75464e75e05785b412b602eb140125de8459b576f";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = "The parser for the manifest files in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
