
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-navigation2";
  version = "2.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_navigation2/2.3.6-1.tar.gz";
    name = "2.3.6-1.tar.gz";
    sha256 = "8c44a3cd5896c7592931c6939270fd4a538f15f309392170ff25d3b8f66475f1";
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
