
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros-testing, ros2cli }:
buildRosPackage {
  pname = "ros-humble-ros2pkg";
  version = "0.18.3-2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2pkg/0.18.3-2.tar.gz";
    name = "0.18.3-2.tar.gz";
    sha256 = "sha256-6z6YJm9lQ7nabPbePoCcsG3XYolgHxTARczcit4tpWw=";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing ];
  propagatedBuildInputs = [ ament-index-python python3Packages.catkin-pkg python3Packages.empy python3Packages.importlib-resources python3Packages.setuptools ros2cli ];

  meta = {
    description = ''The pkg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
