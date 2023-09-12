
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, turtlebot3 }:
buildRosPackage {
  pname = "ros-foxy-rtabmap-demos";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/foxy/rtabmap_demos/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "2901b383e4b4ab0e4d54614b31f82c8f5950387edc38c634d6f42b3eab428c80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz turtlebot3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's demo launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
