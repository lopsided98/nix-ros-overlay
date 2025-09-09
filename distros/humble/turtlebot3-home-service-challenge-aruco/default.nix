
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-home-service-challenge-aruco";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/humble/turtlebot3_home_service_challenge_aruco/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "a8779bc9a4abb610def1a84c4301391dc8840eb318203145f3c9112f57c5a3f0";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.numpy python3Packages.opencv4 python3Packages.scipy rclpy sensor-msgs std-msgs tf2-ros ];

  meta = {
    description = "Using aruco package for turtlebot3_home_service_challenge";
    license = with lib.licenses; [ asl20 ];
  };
}
