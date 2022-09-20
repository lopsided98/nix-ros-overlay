
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, pythonPackages, rcl-interfaces, rclcpp-components, rclpy, ros2cli, ros2node, ros2param, ros2pkg }:
buildRosPackage {
  pname = "ros-foxy-ros2component";
  version = "0.9.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2component/0.9.12-1.tar.gz";
    name = "0.9.12-1.tar.gz";
    sha256 = "2cb7d11a05984ce5afc99a01f7f6e0839d62b542c2a2e70a634d7bc6da3b79ad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces rcl-interfaces rclcpp-components rclpy ros2cli ros2node ros2param ros2pkg ];

  meta = {
    description = ''The component command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
