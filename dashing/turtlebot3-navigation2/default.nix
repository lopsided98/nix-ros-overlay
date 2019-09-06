
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2-bringup, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-navigation2";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_navigation2/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "1c25d71d8a26765b7ce52136aaf6dd9f8a775473dd1a898326094e607bd4cc07";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
