
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, pythonPackages, openssl, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-sros2";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/crystal/sros2/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "006a7b5eef7f2d33a38be6367659eec3a17a901a35339c1b30fd64b4ab2b4f76";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ openssl ros2cli python3Packages.lxml ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
