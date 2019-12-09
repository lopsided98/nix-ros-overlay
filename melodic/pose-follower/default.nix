
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pluginlib, catkin, base-local-planner, tf2-geometry-msgs, nav-core, costmap-2d, roscpp, nav-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-pose-follower";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/pose_follower/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "d41dd5aab341f0af1b8eec70fb7db581f1857cf8d0d5574f5039f53288b3761b";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure pluginlib base-local-planner tf2-geometry-msgs nav-core costmap-2d roscpp nav-msgs tf2-ros ];
  propagatedBuildInputs = [ dynamic-reconfigure pluginlib base-local-planner tf2-geometry-msgs nav-core costmap-2d roscpp nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
