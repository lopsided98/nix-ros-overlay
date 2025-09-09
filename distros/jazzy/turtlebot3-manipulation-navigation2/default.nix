
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, navigation2, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-manipulation-navigation2";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/jazzy/turtlebot3_manipulation_navigation2/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "2ac65f77291b069f5a1f7930851a7bd5727e1c574ab44116f569e19c8c9aa9aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ navigation2 rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for navigation2";
    license = with lib.licenses; [ asl20 ];
  };
}
