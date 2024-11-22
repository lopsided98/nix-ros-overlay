
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclcpp-components, rclpy, ros2cli, ros2node, ros2param, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2component";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2component/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "09aea9bf4223ff806e06c787daa53ef9a61b9655f679fdd66040d4ae7cb756ee";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces rcl-interfaces rclcpp-components rclpy ros2cli ros2node ros2param ros2pkg ];

  meta = {
    description = "The component command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
