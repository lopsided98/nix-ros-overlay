
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros-testing, ros2cli }:
buildRosPackage {
  pname = "ros-foxy-ros2pkg";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2pkg/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "60e9ce268800c84c7e5eed09314fdf3c2fa5093bfbc0dd1f832a4eb75573b66f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing ];
  propagatedBuildInputs = [ ament-index-python python3Packages.catkin-pkg python3Packages.empy python3Packages.setuptools ros2cli ];

  meta = {
    description = ''The pkg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
