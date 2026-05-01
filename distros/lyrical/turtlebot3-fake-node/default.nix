
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, robot-state-publisher, sensor-msgs, tf2, tf2-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-fake-node";
  version = "2.3.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/lyrical/turtlebot3_fake_node/2.3.7-3.tar.gz";
    name = "2.3.7-3.tar.gz";
    sha256 = "3f095bdd378aa4ea66e39e0ef89aeb6efe62f6524b9f7a660d4823ac6deef4af";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake geometry-msgs nav-msgs rclcpp robot-state-publisher sensor-msgs tf2 tf2-msgs turtlebot3-msgs ];

  meta = {
    description = "Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
