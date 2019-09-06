
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-crystal-ament-flake8";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_flake8/0.6.4-0.tar.gz;
    sha256 = "6ca0be3c8b206bba1c02c67147ac5a3fb36abda8dec3b867d397dfa123ecbe1a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flake8 ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
