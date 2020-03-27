
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2node";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2node/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "86341fa400424abfbe4059211bc3369306b4e6ff7b4cc634df42ef1bfa01bb00";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The node command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
