
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, python3Packages, ament-copyright, ament-index-python, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2pkg";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2pkg/0.7.4-1.tar.gz;
    sha256 = "ced374ca06c25047c37bf51393fec1d442afa6e793ecdecf1a0c4301decfac30";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ python3Packages.catkin-pkg python3Packages.setuptools ament-index-python python3Packages.empy ros2cli ];

  meta = {
    description = ''The pkg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
