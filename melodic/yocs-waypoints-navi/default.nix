
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, tf, catkin, yocs-math-toolkit, yocs-msgs, move-base-msgs, nav-msgs, visualization-msgs, actionlib, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-waypoints-navi";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_waypoints_navi/0.8.2-0.tar.gz;
    sha256 = "b0134c5b12ed2067775780964a54a4d339efc42bcb4481b013913c93550f0e96";
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
