
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, yocs-math-toolkit, actionlib, tf, catkin, actionlib-msgs, visualization-msgs, roscpp, yocs-msgs, nav-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-waypoints-navi";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_waypoints_navi/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "b46bed975e91b289dcaced09a2a612e48a3efd212a34bb9b87b2b209aac3888d";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs yocs-math-toolkit actionlib tf actionlib-msgs visualization-msgs roscpp yocs-msgs nav-msgs move-base-msgs ];
  propagatedBuildInputs = [ geometry-msgs yocs-math-toolkit tf actionlib actionlib-msgs visualization-msgs roscpp yocs-msgs nav-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple tool for waypoints navigation with two functions:
    <br/> * Command the robot to go to a goal by passing through a series of waypoints.
    <br/> * Command the robot to constantly loop through a series of waypoints, useful for patrol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
