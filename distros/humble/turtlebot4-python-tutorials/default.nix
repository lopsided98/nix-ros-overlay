
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, irobot-create-msgs, pythonPackages, rclpy, turtlebot4-navigation }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-python-tutorials";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/humble/turtlebot4_python_tutorials/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "caf34ee343abceb49a0c0da0c8a7b160e188c297f5c7932c421d1fe99a0ccc86";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ irobot-create-msgs rclpy turtlebot4-navigation ];

  meta = {
    description = ''TurtleBot 4 Python Tutorials'';
    license = with lib.licenses; [ asl20 ];
  };
}
