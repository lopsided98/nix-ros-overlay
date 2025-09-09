
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gz-math-vendor, gz-plugin-vendor, gz-sim-vendor, nav-msgs, rclcpp, ros-gz-bridge, ros-gz-image, ros-gz-sim, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-gazebo";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/kilted/turtlebot3_gazebo/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "39d546665cb5558a8a859df7cd8d94bebbda7aee9fb0d0bb28402e96d4ac0f13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs gz-math-vendor gz-plugin-vendor gz-sim-vendor nav-msgs rclcpp ros-gz-bridge ros-gz-image ros-gz-sim sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation package for the TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
