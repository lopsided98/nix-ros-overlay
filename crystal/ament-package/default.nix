
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, python3Packages }:
buildRosPackage {
  pname = "ros-crystal-ament-package";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_package-release/archive/release/crystal/ament_package/0.6.0-0.tar.gz;
    sha256 = "93eb732b8925aa6e1c265ef6c803225354debff818830762cc887729d8e47f6b";
  };

  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ python3Packages.flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = ''The parser for the manifest files in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
