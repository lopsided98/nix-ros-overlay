
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, robot-state-publisher, sensor-msgs, tf2, tf2-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-fake-node";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/galactic/turtlebot3_fake_node/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "74dd61d7ca8495e2c42dc03a06e148b6ada531ad091c0357d2010bf882c1e1e4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake geometry-msgs nav-msgs rclcpp robot-state-publisher sensor-msgs tf2 tf2-msgs turtlebot3-msgs ];

  meta = {
    description = ''Package for TurtleBot3 fake node. With this package, simple tests can be done without a robot.
    You can do simple tests using this package on rviz without real robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
