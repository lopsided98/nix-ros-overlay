
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-navigation2";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_navigation2/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "dc60741d76739200bef0327891e73c3c66b1b1cb7f750ae823d1c1339a2b7e5d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
