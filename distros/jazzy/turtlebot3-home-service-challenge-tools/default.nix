
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, moveit-ros-move-group, nav2-bringup, nav2-bt-navigator, turtlebot3-manipulation-bringup, turtlebot3-manipulation-moveit-config, turtlebot3-manipulation-navigation2 }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-home-service-challenge-tools";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/jazzy/turtlebot3_home_service_challenge_tools/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "56a05a8ce0a6bd5adf607b5487b8cfc649b51ef813757d4fd1731ec1e3fd118e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager moveit-ros-move-group nav2-bringup nav2-bt-navigator turtlebot3-manipulation-bringup turtlebot3-manipulation-moveit-config turtlebot3-manipulation-navigation2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "turtlebot3_home_service_challenge_tools";
    license = with lib.licenses; [ asl20 ];
  };
}
