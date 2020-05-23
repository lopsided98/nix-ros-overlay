
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-carrot-planner";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/carrot_planner/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "22fa3234c67f9b4fb5dc154da44c39652a737691aa4459fc786e48953d2c2346";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs ];
  propagatedBuildInputs = [ base-local-planner costmap-2d eigen nav-core pluginlib roscpp tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
