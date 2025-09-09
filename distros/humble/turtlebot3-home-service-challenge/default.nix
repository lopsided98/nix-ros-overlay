
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-home-service-challenge-aruco, turtlebot3-home-service-challenge-core, turtlebot3-home-service-challenge-manipulator, turtlebot3-home-service-challenge-tools }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-home-service-challenge";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_home_service_challenge-release/archive/release/humble/turtlebot3_home_service_challenge/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "f2d0de2f83f4778535ca9859729c2e8d10847e786b24cd36fd82cb0e03ce01f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-home-service-challenge-aruco turtlebot3-home-service-challenge-core turtlebot3-home-service-challenge-manipulator turtlebot3-home-service-challenge-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS packages for the Turtlebot3 Home Service Challenge (meta package)";
    license = with lib.licenses; [ asl20 ];
  };
}
