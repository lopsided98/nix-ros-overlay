
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, python3Packages, rclpy, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-home-service-challenge-aruco";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/humble/turtlebot3_home_service_challenge_aruco/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "fe27c5f8c098733c658f72a42646ba927b37438f0dd09d4c2c48b78c9864a3da";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.numpy python3Packages.opencv4 python3Packages.scipy rclpy sensor-msgs std-msgs tf2-ros ];

  meta = {
    description = "Using aruco package for turtlebot3_home_service_challenge";
    license = with lib.licenses; [ asl20 ];
  };
}
