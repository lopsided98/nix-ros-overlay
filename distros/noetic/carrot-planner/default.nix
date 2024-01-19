
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-carrot-planner";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/carrot_planner/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "50b110e1d1ce7bfee9bf417b8b53b122723b584658bb1ea9df282e725197ac86";
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
