
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros-environment, ros2cli, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2doctor";
  version = "0.18.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2doctor/0.18.4-1.tar.gz";
    name = "0.18.4-1.tar.gz";
    sha256 = "12d67146324613fc9a5ef89a7cf93d2d5d912483da07deb581bd808d52e86768";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.catkin-pkg python3Packages.importlib-metadata python3Packages.psutil python3Packages.rosdistro rclpy ros-environment ros2cli ];

  meta = {
    description = ''A command line tool to check potential issues in a ROS 2 system'';
    license = with lib.licenses; [ asl20 ];
  };
}
