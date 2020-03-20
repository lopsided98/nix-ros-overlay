
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-global-planner";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/global_planner/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "1d3716a22c0885ab9790bfb37a5c9bb3d5b32ce2a7bb2d1035210bab21a2d67d";
  };

  buildType = "catkin";
  buildInputs = [ angles tf2-geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs nav-core nav-msgs navfn pluginlib roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
