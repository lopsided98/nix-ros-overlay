
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, cmake-modules, costmap-2d, eigen, geometry-msgs, nav-core, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rotate-recovery";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/rotate_recovery/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "87a081850938a83f23315d8a610537e35a6d45aa0278ca5d502e3b11bc3dba41";
  };

  buildType = "catkin";
  buildInputs = [ angles base-local-planner catkin cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen geometry-msgs nav-core pluginlib roscpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by performing a 360 degree rotation of the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
