
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf2-geometry-msgs, nav-core, catkin, tf2-ros, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pose-follower";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/pose_follower/0.3.2-0.tar.gz;
    sha256 = "00042ebe7ca9c50846ca0a358020ec6484b53775106fe2f8539acdf3b400981b";
  };

  buildInputs = [ costmap-2d nav-msgs pluginlib base-local-planner tf2-geometry-msgs nav-core roscpp tf2-ros ];
  propagatedBuildInputs = [ costmap-2d nav-msgs pluginlib base-local-planner tf2-geometry-msgs nav-core roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    #license = lib.licenses.BSD;
  };
}
