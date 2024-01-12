
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-dwb-local-planner";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/dwb_local_planner/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "8be2f90098ae07fa91f8e96c9bcdf1953a7d65ce21e6f1b592b4f8aa32c96367";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-msgs pluginlib roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based local planner implementing the nav_core2::LocalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
