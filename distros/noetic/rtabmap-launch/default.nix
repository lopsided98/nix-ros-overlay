
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtabmap-costmap-plugins, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-launch";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_launch/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "96cf9f7082b2eefdb5542fe23278749e7c68b4cee23ed3ca005cd7b583edbe5a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rtabmap-costmap-plugins rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's main launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
