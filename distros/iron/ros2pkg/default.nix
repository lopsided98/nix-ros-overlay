
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-iron-ros2pkg";
  version = "0.25.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/iron/ros2pkg/0.25.5-1.tar.gz";
    name = "0.25.5-1.tar.gz";
    sha256 = "4e3d8c5a21cf32f3d8aa350d311a861b6082c7926b13da9818f625dcded7b2f7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ament-index-python python3Packages.catkin-pkg python3Packages.empy python3Packages.importlib-resources python3Packages.setuptools ros2cli ];

  meta = {
    description = ''The pkg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
