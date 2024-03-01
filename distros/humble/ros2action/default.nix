
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2action";
  version = "0.18.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2action/0.18.9-1.tar.gz";
    name = "0.18.9-1.tar.gz";
    sha256 = "1e9359518818283a70db9ae80b10715b4693134ed5a0697187785428f6d61d11";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The action command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
