
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2, turtlebot3-description }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-gazebo";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/foxy/turtlebot3_gazebo/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "d0a90b9de5b1bd1b4d669c1eec7565ddc4153d47239eef32b87f7b806906cb11";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 turtlebot3-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
