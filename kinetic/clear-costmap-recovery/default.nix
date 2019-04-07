
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, tf, nav-core, catkin, rostest, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-clear-costmap-recovery";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/clear_costmap_recovery/1.14.4-0.tar.gz;
    sha256 = "ed33bd27b341aa89479a4fe5bc11027ea41f5363b181ae1d20ddd65ef094ac5e";
  };

  buildInputs = [ costmap-2d cmake-modules pluginlib eigen tf nav-core roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d pluginlib eigen nav-core tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.'';
    #license = lib.licenses.BSD;
  };
}
