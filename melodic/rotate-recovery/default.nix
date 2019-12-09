
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, cmake-modules, base-local-planner, catkin, roscpp, costmap-2d, nav-core, eigen, tf2-geometry-msgs, tf2, angles, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rotate-recovery";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/rotate_recovery/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "73cc4c1925187b6b23ad9600de6117f4465fc1308aee50c17e06e907f5c0790f";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib cmake-modules base-local-planner roscpp tf2-geometry-msgs nav-core eigen costmap-2d tf2 angles tf2-ros ];
  propagatedBuildInputs = [ geometry-msgs pluginlib roscpp tf2-geometry-msgs nav-core eigen costmap-2d tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by performing a 360 degree rotation of the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
