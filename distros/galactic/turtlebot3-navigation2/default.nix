
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-navigation2";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3_navigation2/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "f9ca7897926ba31b7a7e7e75e5824fe49a1f39eead554f2c009a6f9359422fed";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
