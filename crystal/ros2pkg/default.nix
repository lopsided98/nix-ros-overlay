
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, python3Packages, ament-copyright, ament-index-python, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2pkg";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2pkg/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "60545874df871dbeafd5ed2d39d5f4b7957c5e7e4260cf1cd4775f1f807a7e31";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.catkin-pkg python3Packages.setuptools ament-index-python python3Packages.empy ros2cli ];

  meta = {
    description = ''The pkg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
