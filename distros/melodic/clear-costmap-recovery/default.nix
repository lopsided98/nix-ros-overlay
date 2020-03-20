
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, nav-core, pluginlib, roscpp, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-clear-costmap-recovery";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/clear_costmap_recovery/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "841bb672c01a4e164842b3d55e81eb5a186aa76244917647e3a7ce808662f7ef";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d eigen nav-core pluginlib roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
