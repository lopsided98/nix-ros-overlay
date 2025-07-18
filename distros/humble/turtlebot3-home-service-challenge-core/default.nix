
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav2-msgs, rclpy, std-msgs, turtlebot3-home-service-challenge-aruco, turtlebot3-home-service-challenge-manipulator }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-home-service-challenge-core";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/humble/turtlebot3_home_service_challenge_core/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "7aacd931bd873029e8aff66aaf5ce9f2226ec480fd571c178bc66ec2e407150f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav2-msgs rclpy std-msgs turtlebot3-home-service-challenge-aruco turtlebot3-home-service-challenge-manipulator ];

  meta = {
    description = "Core package for turtlebot3_home_service_challenge";
    license = with lib.licenses; [ asl20 ];
  };
}
