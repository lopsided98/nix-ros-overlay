
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-kilted-ros2run";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/kilted/ros2run/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "7be7d82bb587172d9fd9e4fb2395a65e977d608a61a10297f346307dad366620";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = "The run command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
