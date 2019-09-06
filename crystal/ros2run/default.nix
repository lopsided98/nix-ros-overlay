
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, ament-copyright, ros2pkg, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2run";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2run/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "f0aad3bd70be47c0d33ca3c00594b3815d896aabe91298e6bc6e5023b184863d";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ ros2pkg ros2cli ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
