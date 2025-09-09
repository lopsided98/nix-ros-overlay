
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, ros2topic, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2service";
  version = "0.38.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/kilted/ros2service/0.38.0-1.tar.gz";
    name = "0.38.0-1.tar.gz";
    sha256 = "ab7c4705ebf18658de85d7a6785068bf0fc964a775e0548ddfd3c806312d5100";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli ros2topic rosidl-runtime-py ];

  meta = {
    description = "The service command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
