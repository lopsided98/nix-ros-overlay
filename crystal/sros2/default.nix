
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, openssl, python3Packages, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-sros2";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/crystal/sros2/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "006a7b5eef7f2d33a38be6367659eec3a17a901a35339c1b30fd64b4ab2b4f76";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ openssl python3Packages.lxml ros2cli ];

  meta = {
    description = ''Command line tools for managing SROS2 keys'';
    license = with lib.licenses; [ asl20 ];
  };
}
