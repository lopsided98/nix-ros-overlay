
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, robot-state-publisher, sensor-msgs, tf2, tf2-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-fake-node";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/humble/turtlebot3_fake_node/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "f912f7c6bd3b0872ab3c59f3fe26ade07e3a20bd067782100f1ff95393ad3c5d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake geometry-msgs nav-msgs rclcpp robot-state-publisher sensor-msgs tf2 tf2-msgs turtlebot3-msgs ];

  meta = {
    description = "Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
