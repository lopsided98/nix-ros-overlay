
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, test-msgs, rclpy, rosidl-runtime-py, pythonPackages, ament-pep257, action-msgs, ament-copyright, ament-index-python, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2action";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2action/0.7.4-1.tar.gz;
    sha256 = "0bca539febbeeb7d52f9edfc4e2ff445e578f6e698af2bed9346515195dc24db";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ros2cli ];
  checkInputs = [ ament-xmllint pythonPackages.pytest ament-flake8 test-msgs ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ rclpy rosidl-runtime-py action-msgs ament-index-python ros2cli ];

  meta = {
    description = ''The action command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
