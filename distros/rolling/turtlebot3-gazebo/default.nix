
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-gazebo";
  version = "2.2.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/rolling/turtlebot3_gazebo/2.2.5-2.tar.gz";
    name = "2.2.5-2.tar.gz";
    sha256 = "5bcda560d52185893e52feaf9a5f4a00fd88960ee9da00901f28919b323af218";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
