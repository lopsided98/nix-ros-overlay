
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp, std-msgs, turtlebot3-home-service-challenge-tools }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-home-service-challenge-manipulator";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/jazzy/turtlebot3_home_service_challenge_manipulator/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "7d6e800efac3fbe233036189e25b1c78089f17d97351e556272e6d67dbf9a7d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-ros-planning-interface rclcpp std-msgs turtlebot3-home-service-challenge-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Manipulator controller package for turtlebot3_home_service_challenge";
    license = with lib.licenses; [ asl20 ];
  };
}
