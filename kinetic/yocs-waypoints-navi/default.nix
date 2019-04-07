
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, tf, catkin, yocs-math-toolkit, yocs-msgs, move-base-msgs, nav-msgs, visualization-msgs, actionlib, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-waypoints-navi";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_waypoints_navi/0.8.2-0.tar.gz;
    sha256 = "b46bed975e91b289dcaced09a2a612e48a3efd212a34bb9b87b2b209aac3888d";
  };

  buildInputs = [ actionlib-msgs tf yocs-math-toolkit yocs-msgs roscpp move-base-msgs nav-msgs actionlib visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs tf yocs-math-toolkit yocs-msgs roscpp move-base-msgs nav-msgs actionlib visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple tool for waypoints navigation with two functions:
    <br/> * Command the robot to go to a goal by passing through a series of waypoints.
    <br/> * Command the robot to constantly loop through a series of waypoints, useful for patrol.'';
    #license = lib.licenses.BSD;
  };
}
