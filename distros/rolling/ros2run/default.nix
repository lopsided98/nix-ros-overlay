
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2run";
  version = "0.31.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2run/0.31.1-1.tar.gz";
    name = "0.31.1-1.tar.gz";
    sha256 = "00bcdbbf96cdc23be73dd5b19f117972a5c89bfc19c5f93e251d09b56ea4a4b0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
