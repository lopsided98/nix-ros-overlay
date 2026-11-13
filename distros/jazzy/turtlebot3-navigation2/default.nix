
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-navigation2";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_navigation2/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "2f8baf8a0bfb465df990b96209ba43a2c78014aed6674c74c54426f8dfcf63cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for navigation2";
    license = with lib.licenses; [ asl20 ];
  };
}
