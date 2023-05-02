
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, navigation2, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation-navigation2";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation_navigation2/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "98271cdda5e7695defa9da9277494d275d63cc8c8df3db479afb646d2816b8f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ navigation2 rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
