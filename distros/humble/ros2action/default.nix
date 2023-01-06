
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2action";
  version = "0.18.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2action/0.18.4-1.tar.gz";
    name = "0.18.4-1.tar.gz";
    sha256 = "9501ff0d60dfa880c7a3ab8f819ee21e408f656bf2d8f0fc15a6c0e793c3a0de";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The action command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
