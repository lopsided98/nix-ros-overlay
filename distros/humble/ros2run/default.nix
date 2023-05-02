
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-humble-ros2run";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2run/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "fbd15614e4e69b4888f7e411bab7b77e2080eb729dd9166da7533426cda1c1a7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
