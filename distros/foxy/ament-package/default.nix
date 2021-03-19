
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-package";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/foxy/ament_package/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "84219be6b42aeb1888041a18448ec08fbe176658419241d6c71576bc95e89772";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
