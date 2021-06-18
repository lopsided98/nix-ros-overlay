
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-gazebo";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/galactic/turtlebot3_gazebo/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "865093b702e896467230cca014ebd7f24f318bd335b76f9853cdd08864ab5832";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros-pkgs geometry-msgs nav-msgs rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
