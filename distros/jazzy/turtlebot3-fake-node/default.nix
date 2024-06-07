
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, robot-state-publisher, sensor-msgs, tf2, tf2-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-fake-node";
  version = "2.2.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/jazzy/turtlebot3_fake_node/2.2.5-5.tar.gz";
    name = "2.2.5-5.tar.gz";
    sha256 = "3435bfcfda76ab73e5f4feb60b74d5f4b9f06c2b7a4c8eef122aba93db3eb13d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake geometry-msgs nav-msgs rclcpp robot-state-publisher sensor-msgs tf2 tf2-msgs turtlebot3-msgs ];

  meta = {
    description = "Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
