
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, rclpy, sensor-msgs, tf-transformations, turtlebot3-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-example";
  version = "2.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_example/2.3.6-1.tar.gz";
    name = "2.3.6-1.tar.gz";
    sha256 = "608f79bc2b93801462c05607c2f2a3df4448c28ac0dfa4ef495628665852e5bb";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclpy sensor-msgs tf-transformations turtlebot3-msgs visualization-msgs ];

  meta = {
    description = "This package provides four basic examples for TurtleBot3 (i.e., interactive marker, object detection, patrol and position control).";
    license = with lib.licenses; [ asl20 ];
  };
}
