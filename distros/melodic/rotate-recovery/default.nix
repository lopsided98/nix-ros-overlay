
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, cmake-modules, costmap-2d, eigen, geometry-msgs, nav-core, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rotate-recovery";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/rotate_recovery/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "7d71affe33fe0698ca2ef2eac6b7184ae1444df0f691a45613b274a20be04df6";
  };

  buildType = "catkin";
  buildInputs = [ angles base-local-planner cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen geometry-msgs nav-core pluginlib roscpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by performing a 360 degree rotation of the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
