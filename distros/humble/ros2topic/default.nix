
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, rosgraph-msgs, rosidl-runtime-py, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2topic";
  version = "0.18.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2topic/0.18.14-1.tar.gz";
    name = "0.18.14-1.tar.gz";
    sha256 = "459b0f9bb7db8b4126443d726d27fd2c96fb5f6977c71dacf3e4cc00d1d69c9c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint geometry-msgs launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout rosgraph-msgs std-msgs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "The topic command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
