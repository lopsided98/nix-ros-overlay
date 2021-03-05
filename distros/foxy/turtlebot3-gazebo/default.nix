
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2, turtlebot3 }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-gazebo";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/foxy/turtlebot3_gazebo/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "006fbfb6cb78cff7556e7452b3d6c8207cb77e880b08481127bb0f1ad6528fea";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 turtlebot3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
