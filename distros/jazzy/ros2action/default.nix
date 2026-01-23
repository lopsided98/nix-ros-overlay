
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2action";
  version = "0.32.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2action/0.32.8-1.tar.gz";
    name = "0.32.8-1.tar.gz";
    sha256 = "3e59cc190558d1bdfe3c379ea9c454cc6a4c5595eeee35b5bac79d6033c4d0aa";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "The action command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
