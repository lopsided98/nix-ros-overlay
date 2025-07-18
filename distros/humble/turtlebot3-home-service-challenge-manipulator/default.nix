
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-ros-planning-interface, rclcpp, std-msgs, turtlebot3-home-service-challenge-tools }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-home-service-challenge-manipulator";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/humble/turtlebot3_home_service_challenge_manipulator/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "fcb60f3d64fba3528df800add55b3826ca2571f067919b5d614edded1e635561";
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
