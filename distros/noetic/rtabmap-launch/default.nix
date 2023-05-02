
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtabmap-costmap-plugins, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-launch";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_launch/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "24d8624cc1a4b26fd02a86529695b04c1f92f2a11a70024b5f1f1d0fb17c13c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rtabmap-costmap-plugins rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's main launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
