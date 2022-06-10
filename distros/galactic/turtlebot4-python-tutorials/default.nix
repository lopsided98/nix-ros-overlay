
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, irobot-create-msgs, pythonPackages, rclpy, turtlebot4-navigation }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-python-tutorials";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/galactic/turtlebot4_python_tutorials/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "142b7ef0f51b2206ce0fbf5c7e863775aeae8d3e83c6c5985edae155ed9e45c9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ irobot-create-msgs rclpy turtlebot4-navigation ];

  meta = {
    description = ''TurtleBot 4 Python Tutorials'';
    license = with lib.licenses; [ asl20 ];
  };
}
