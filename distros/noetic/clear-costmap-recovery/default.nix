
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, nav-core, pluginlib, roscpp, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-clear-costmap-recovery";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/clear_costmap_recovery/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "6bc5943f141b7ff5ff918111f9a3b80786918ff47fac3b5600355722c460d769";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d eigen nav-core pluginlib roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
