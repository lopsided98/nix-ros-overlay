
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-package";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/dashing/ament_package/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "d806adfdd9c22e11fb05a770d00102bf9faf29ad047f29004da5e1e8a4dd4fc7";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
