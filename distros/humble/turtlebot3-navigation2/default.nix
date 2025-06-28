
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-navigation2";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_navigation2/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "1b4b759b4f01806acd9ac37b008ff2e6a5a06c4c9cb1783108538c1900d5d0a6";
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
