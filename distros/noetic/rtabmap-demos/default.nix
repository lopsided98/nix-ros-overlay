
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, find-object-2d, hector-mapping, husky-navigation, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz, turtlebot3-bringup, turtlebot3-gazebo, turtlebot3-navigation, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-demos";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_demos/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "f202d8d7efeda03be12ce0c524edc402c0074a6f82ddd32b4d220252ebdeea0f";
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
