
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ament-flake8, ament-pep257 }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-create-pkg";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_create_pkg/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "8b06fe3b1d46959c2c3f2c171fb7aefbcdd9146d9bb69d0cfb7a5e73f4d656d4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];

  meta = {
    description = ''A command line tool to create a boiler-plate package'';
    license = with lib.licenses; [ asl20 ];
  };
}
