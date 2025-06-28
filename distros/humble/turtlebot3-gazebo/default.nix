
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-gazebo";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/humble/turtlebot3_gazebo/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "cbb857de2fa416430761ccecbb5d8070c08e7224ade71ac7297c12ce495f54cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation package for the TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
