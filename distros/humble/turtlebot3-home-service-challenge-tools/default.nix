
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, moveit-ros-move-group, nav2-bringup, nav2-bt-navigator, turtlebot3-manipulation-bringup, turtlebot3-manipulation-moveit-config, turtlebot3-manipulation-navigation2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-home-service-challenge-tools";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/humble/turtlebot3_home_service_challenge_tools/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "056207795ee73ebcf83299c5915b3de7a2213dfda6019d73a69db94c27d263b0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-manager moveit-ros-move-group nav2-bringup nav2-bt-navigator turtlebot3-manipulation-bringup turtlebot3-manipulation-moveit-config turtlebot3-manipulation-navigation2 ];

  meta = {
    description = "turtlebot3_home_service_challenge_tools";
    license = with lib.licenses; [ asl20 ];
  };
}
