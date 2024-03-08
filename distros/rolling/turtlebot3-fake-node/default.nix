
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, robot-state-publisher, sensor-msgs, tf2, tf2-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-fake-node";
  version = "2.2.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/rolling/turtlebot3_fake_node/2.2.5-4.tar.gz";
    name = "2.2.5-4.tar.gz";
    sha256 = "95e88a679d2c29e680f310ca5ba0f59fe2b863d1d05739017016c088bb1a8dce";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake geometry-msgs nav-msgs rclcpp robot-state-publisher sensor-msgs tf2 tf2-msgs turtlebot3-msgs ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
