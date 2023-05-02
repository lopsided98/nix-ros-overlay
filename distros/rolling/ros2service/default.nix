
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2service";
  version = "0.26.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2service/0.26.0-1.tar.gz";
    name = "0.26.0-1.tar.gz";
    sha256 = "5ab112df49abf806bffdcf5dd3e48e3e56e4e37fa9c5eb74e1e54eb792caf1ee";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
