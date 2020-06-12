
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-ament-package";
  version = "0.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/eloquent/ament_package/0.8.9-1.tar.gz";
    name = "0.8.9-1.tar.gz";
    sha256 = "8b97a1bb5815cf6596cf88a738cf226f8d78e75675678919c8b5314eee90a9e9";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
