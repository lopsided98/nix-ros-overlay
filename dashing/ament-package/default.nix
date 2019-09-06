
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-package";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/dashing/ament_package/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "5c1a3f0b7f7342f86d93d99a42f87815aadb497b5236a362b0a255d1e9fe9faf";
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
