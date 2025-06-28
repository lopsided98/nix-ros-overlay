
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, rclpy, sensor-msgs, tf-transformations, turtlebot3-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-example";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_example/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "1f553c758aa8dfb897e2c6c04b8bb121523483f4218fc509fecf04207d5b8362";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclpy sensor-msgs tf-transformations turtlebot3-msgs visualization-msgs ];

  meta = {
    description = "This package provides four basic examples for TurtleBot3 (i.e., interactive marker, object detection, patrol and position control).";
    license = with lib.licenses; [ asl20 ];
  };
}
