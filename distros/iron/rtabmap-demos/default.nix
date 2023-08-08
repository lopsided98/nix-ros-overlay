
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-iron-rtabmap-demos";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_demos/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "8d696440d50119a36e3f4174aad5f091b4b85de3ad22b670bf377f6cd14a8212";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's demo launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
