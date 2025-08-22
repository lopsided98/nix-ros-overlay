
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav2-msgs, rclpy, std-msgs, turtlebot3-home-service-challenge-aruco, turtlebot3-home-service-challenge-manipulator }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-home-service-challenge-core";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/jazzy/turtlebot3_home_service_challenge_core/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "4ee6b645da9d215f28c3f319e00f957a0ddcb284ffc572d5de47eff3bcb233ea";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav2-msgs rclpy std-msgs turtlebot3-home-service-challenge-aruco turtlebot3-home-service-challenge-manipulator ];

  meta = {
    description = "Core package for turtlebot3_home_service_challenge";
    license = with lib.licenses; [ asl20 ];
  };
}
