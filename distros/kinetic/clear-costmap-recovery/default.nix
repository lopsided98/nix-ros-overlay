
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, nav-core, pluginlib, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-kinetic-clear-costmap-recovery";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/clear_costmap_recovery/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "dda22800e87f6fa1cf100084d99ca7792fa6705e5ecc2cd6423acb2faba27cd1";
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
