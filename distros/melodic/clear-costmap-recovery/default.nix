
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, nav-core, pluginlib, roscpp, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-clear-costmap-recovery";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/clear_costmap_recovery/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "b77ce4cefb9428c90c673f85658a08ff68aee45a2651332720c7c5fa6f212fe1";
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
