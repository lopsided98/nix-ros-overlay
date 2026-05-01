
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gz-math-vendor, gz-plugin-vendor, gz-sim-vendor, nav-msgs, rclcpp, ros-gz-bridge, ros-gz-image, ros-gz-sim, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-gazebo";
  version = "2.3.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/lyrical/turtlebot3_gazebo/2.3.7-3.tar.gz";
    name = "2.3.7-3.tar.gz";
    sha256 = "4793164a2c09233ecf6b3888ff48a03236f707c945844e7b37542e048e3f8e6a";
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
