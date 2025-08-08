
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2pkg";
  version = "0.40.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2pkg/0.40.0-1.tar.gz";
    name = "0.40.0-1.tar.gz";
    sha256 = "d6585fd49ccd795c5ff501cec77d756aaa7325266ed07a848e69d36b6b72b54e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ament-copyright ament-index-python python3Packages.catkin-pkg python3Packages.empy python3Packages.importlib-resources ros2cli ];

  meta = {
    description = "The pkg command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
