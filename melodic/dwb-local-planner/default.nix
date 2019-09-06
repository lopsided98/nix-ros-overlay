
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, sensor-msgs, catkin, roscpp, nav-2d-msgs, rostest, nav-2d-utils, nav-msgs, dwb-msgs, visualization-msgs, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dwb-local-planner";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_local_planner/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "ff619b8d1853a88a117ab1e4efae8e9ba011e15875be81cda989e08360c7014a";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib nav-core2 sensor-msgs roscpp nav-2d-utils nav-msgs dwb-msgs visualization-msgs tf nav-2d-msgs geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ pluginlib tf sensor-msgs nav-core2 nav-2d-utils nav-msgs dwb-msgs visualization-msgs roscpp nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based local planner implementing the nav_core2::LocalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
