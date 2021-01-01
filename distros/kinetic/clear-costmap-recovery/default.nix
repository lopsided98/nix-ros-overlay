
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, nav-core, pluginlib, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-kinetic-clear-costmap-recovery";
  version = "1.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/clear_costmap_recovery/1.14.8-1.tar.gz";
    name = "1.14.8-1.tar.gz";
    sha256 = "606210558c1ae96538698a7c13ade1c74364f2c675755b052338bc0ec444e229";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d eigen nav-core pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
