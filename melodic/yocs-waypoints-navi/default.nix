
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, yocs-math-toolkit, actionlib, tf, catkin, actionlib-msgs, visualization-msgs, roscpp, yocs-msgs, nav-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-waypoints-navi";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_waypoints_navi/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "b0134c5b12ed2067775780964a54a4d339efc42bcb4481b013913c93550f0e96";
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
