
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, tf, cmake-modules, catkin, costmap-2d, nav-core, eigen, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-clear-costmap-recovery";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/clear_costmap_recovery/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "3ccd7ef37ee61777a13c993cfedb1ae8f209cb8ff746e108dd2b156e69672915";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib tf cmake-modules costmap-2d nav-core eigen roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib tf costmap-2d nav-core eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
