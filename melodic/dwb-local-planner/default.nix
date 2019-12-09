
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rostest, geometry-msgs, nav-core2, pluginlib, tf, catkin, roscpp, rosunit, roslint, visualization-msgs, nav-2d-msgs, dwb-msgs, nav-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-melodic-dwb-local-planner";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_local_planner/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "ff619b8d1853a88a117ab1e4efae8e9ba011e15875be81cda989e08360c7014a";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs nav-core2 pluginlib tf roscpp visualization-msgs nav-2d-msgs dwb-msgs nav-msgs nav-2d-utils ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs nav-core2 pluginlib tf roscpp visualization-msgs nav-2d-msgs dwb-msgs nav-msgs nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based local planner implementing the nav_core2::LocalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
