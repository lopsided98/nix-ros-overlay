
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2run";
  version = "0.33.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2run/0.33.0-1.tar.gz";
    name = "0.33.0-1.tar.gz";
    sha256 = "1302148b87c91f7bc40ae7c864e83de04d8d1dc4c5697837075d59c06efbd6a9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = "The run command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
