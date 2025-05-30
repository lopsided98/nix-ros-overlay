
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, robot-state-publisher, sensor-msgs, tf2, tf2-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-fake-node";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/kilted/turtlebot3_fake_node/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "8880719b1a997abf3c9cc1bc321c5ce2936015c4ddda273bfae89f8040a7b8d3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake geometry-msgs nav-msgs rclcpp robot-state-publisher sensor-msgs tf2 tf2-msgs turtlebot3-msgs ];

  meta = {
    description = "Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
