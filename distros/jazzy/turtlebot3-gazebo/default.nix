
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gz-math-vendor, gz-plugin-vendor, gz-sim-vendor, nav-msgs, rclcpp, ros-gz-bridge, ros-gz-image, ros-gz-sim, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-gazebo";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/jazzy/turtlebot3_gazebo/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "8b76bf60c0d002aa21befa606588d66e5424f7819afbfea09a8fe061b40daf07";
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
