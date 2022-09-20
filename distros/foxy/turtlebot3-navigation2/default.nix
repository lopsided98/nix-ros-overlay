
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-navigation2";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_navigation2/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ffef43127cb706840e25dcdb563eb3fa1687ea1d3cc80148ff12798ffedae0c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
