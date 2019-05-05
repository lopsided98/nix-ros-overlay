
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, tf, nav-core, catkin, rostest, eigen, roscpp }:
buildRosPackage {
  pname = "ros-lunar-clear-costmap-recovery";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/clear_costmap_recovery/1.15.2-0.tar.gz;
    sha256 = "39dbcad2d882c23ad16539135c5579378d53accd58ff60f1c6ac5f9221f9449b";
  };

  buildInputs = [ costmap-2d cmake-modules pluginlib nav-core roscpp eigen tf ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-core roscpp eigen tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
