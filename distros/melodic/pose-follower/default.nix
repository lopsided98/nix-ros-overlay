
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, dynamic-reconfigure, nav-core, nav-msgs, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-pose-follower";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/pose_follower/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "3d7469e679df65dbb213d895ea3297f9ca9e1df52c25e8edc8e561c08a38a14f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d dynamic-reconfigure nav-core nav-msgs pluginlib roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
