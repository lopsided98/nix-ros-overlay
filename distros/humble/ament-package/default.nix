
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-package";
  version = "0.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/humble/ament_package/0.14.2-1.tar.gz";
    name = "0.14.2-1.tar.gz";
    sha256 = "428e817350114725062b24ea8f0fe7693b625b5e5fbe8db4400a2b8ae0b5af5a";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];

  meta = {
    description = "The parser for the manifest files in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
