
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2, turtlebot3 }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-gazebo";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/dashing/turtlebot3_gazebo/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "33c47c80fee3b6bdf32bd5a6f8c48a4ffb75030455b4308406c5071b9a4dae6b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 turtlebot3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
