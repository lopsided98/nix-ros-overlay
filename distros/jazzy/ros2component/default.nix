
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, python3Packages, rcl-interfaces, rclcpp-components, rclpy, ros2cli, ros2node, ros2param, ros2pkg }:
buildRosPackage {
  pname = "ros-jazzy-ros2component";
  version = "0.32.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2component/0.32.8-1.tar.gz";
    name = "0.32.8-1.tar.gz";
    sha256 = "7174b19f7d5da3bd785823d8a35ef118a3cceb607668cf31f434119793d807cd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces rcl-interfaces rclcpp-components rclpy ros2cli ros2node ros2param ros2pkg ];

  meta = {
    description = "The component command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
