
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf, nav-core, catkin, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-carrot-planner";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/carrot_planner/1.14.4-0.tar.gz;
    sha256 = "8b35c17c47ac380c5a0c01b6b9b69c36ac88ec6e4dfea8b3f75e62b31398ca5b";
  };

  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner eigen nav-core tf roscpp ];
  nativeBuildInputs = [ costmap-2d catkin pluginlib base-local-planner eigen nav-core tf roscpp ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    #license = lib.licenses.BSD;
  };
}
