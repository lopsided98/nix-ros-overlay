
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-global-planner";
  version = "1.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/global_planner/1.16.6-1.tar.gz";
    name = "1.16.6-1.tar.gz";
    sha256 = "ec9255b82f95ec7e3013937a1a03a3227a6929fb4a97fbe81df0175d0261e8a8";
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
