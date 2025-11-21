
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, rclpy, sensor-msgs, tf-transformations, turtlebot3-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-example";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/kilted/turtlebot3_example/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "f081bd380c92a40ddae5071db25562869bef6ba497d26bce92963dcae963d8a7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclpy sensor-msgs tf-transformations turtlebot3-msgs visualization-msgs ];

  meta = {
    description = "This package provides four basic examples for TurtleBot3 (i.e., interactive marker, object detection, patrol and position control).";
    license = with lib.licenses; [ asl20 ];
  };
}
