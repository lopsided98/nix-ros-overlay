
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-galactic-ros2run";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/galactic/ros2run/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "ad5ccb0193dfcfe2dc45ee82ec238fa4f7a6c665ac046d0d444af31a7fc010f0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
