
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-package";
  version = "0.18.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/lyrical/ament_package/0.18.3-3.tar.gz";
    name = "0.18.3-3.tar.gz";
    sha256 = "e3643e6f8540be7af35afea6ee3e179b04551d64658635a3729fd545e8519157";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.setuptools ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = "The parser for the manifest files in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
