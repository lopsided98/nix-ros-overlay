
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, find-object-2d, hector-mapping, husky-navigation, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz, turtlebot3-bringup, turtlebot3-gazebo, turtlebot3-navigation, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-demos";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_demos/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "2dc109d4f6fa700e2f626a03d0a120f16709afeac7e09484d8fa10d7cfa76c7b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ find-object-2d hector-mapping husky-navigation rtabmap-conversions rtabmap-costmap-plugins rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-sync rtabmap-util rtabmap-viz turtlebot3-bringup turtlebot3-gazebo turtlebot3-navigation visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's demo launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
