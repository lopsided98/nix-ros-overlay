
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-local-planner";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_local_planner/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "8316981fdc61e3713156c8f83ca333a5e5d662aa6859f909bc3c7286584eacb9";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-msgs pluginlib roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based local planner implementing the nav_core2::LocalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
