
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, irobot-create-msgs, pythonPackages, rclpy, turtlebot4-navigation }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-python-tutorials";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/humble/turtlebot4_python_tutorials/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7c6c37fe82656c10d15293d3ebb9ee4ae376dab37d70feea38723b447f072829";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ irobot-create-msgs rclpy turtlebot4-navigation ];

  meta = {
    description = ''TurtleBot 4 Python Tutorials'';
    license = with lib.licenses; [ asl20 ];
  };
}
