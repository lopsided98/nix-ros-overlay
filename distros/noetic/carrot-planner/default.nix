
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-carrot-planner";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/carrot_planner/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "4b97d1b64c80686f5e27d0bc312f2cdc1cc158bc6cf25b15c4d8489fdb7b7f73";
  };

  buildType = "catkin";
  buildInputs = [ catkin tf2-geometry-msgs ];
  propagatedBuildInputs = [ angles base-local-planner costmap-2d eigen nav-core pluginlib roscpp tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
