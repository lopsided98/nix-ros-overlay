
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-package";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/humble/ament_package/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "d379c0fa8d42afb2c21420b557e8eac940c5c0d50959c628a703b4a7945a71e6";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];

  meta = {
    description = "The parser for the manifest files in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
