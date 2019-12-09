
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, base-local-planner, tf2, tf2-geometry-msgs, nav-core, eigen, costmap-2d, roscpp, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-carrot-planner";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/carrot_planner/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "8038414031acedc20a1d217d274302609006ef887fd7938d8163aa5015756608";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib base-local-planner roscpp tf2-geometry-msgs nav-core eigen costmap-2d tf2 tf2-ros ];
  propagatedBuildInputs = [ pluginlib base-local-planner roscpp costmap-2d nav-core eigen tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
