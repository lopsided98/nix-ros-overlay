
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, navigation2, rviz2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-navigation2";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_navigation2/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ab2460e5fecf16441470d5fea6eb7efb7bdcfcfaa9226881342c11279ce32d92";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ navigation2 rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
