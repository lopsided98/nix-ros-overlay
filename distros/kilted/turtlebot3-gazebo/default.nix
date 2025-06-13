
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclcpp, ros-gz-bridge, ros-gz-image, ros-gz-sim, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-gazebo";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/kilted/turtlebot3_gazebo/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "081a23ee56b1c58402a7b273424b75edba31dffb4be1783b695f7db3b894d9db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp ros-gz-bridge ros-gz-image ros-gz-sim sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation package for the TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
