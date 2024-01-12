
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-global-planner";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/global_planner/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "796c1eda07d56375850f5912ed3285fb00f688c407bcde7b16deba120d8fac72";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin tf2-geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs nav-core nav-msgs navfn pluginlib roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
