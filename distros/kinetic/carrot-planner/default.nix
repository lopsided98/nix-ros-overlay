
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-carrot-planner";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/carrot_planner/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "de420cdc4190f1105e6d1b88b0df7b5b807e43c83abac56ece8982aed5417082";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d eigen nav-core pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
