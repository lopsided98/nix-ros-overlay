
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-package";
  version = "0.15.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_package-release/archive/release/iron/ament_package/0.15.3-2.tar.gz";
    name = "0.15.3-2.tar.gz";
    sha256 = "a723cf68101c11edd6e66f67aa0eb2020ae61a41201e21f9177602a56e09689a";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.importlib-resources python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
