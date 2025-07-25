
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-home-service-challenge-aruco";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/jazzy/turtlebot3_home_service_challenge_aruco/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "8716280375c7fb8f9a0f0f0ac02291855bebed3bbe9a0ba53c9009b33180b00c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.numpy python3Packages.opencv4 python3Packages.scipy rclpy sensor-msgs std-msgs tf2-ros ];

  meta = {
    description = "Using aruco package for turtlebot3_home_service_challenge";
    license = with lib.licenses; [ asl20 ];
  };
}
