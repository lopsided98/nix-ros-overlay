
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rostest, geometry-msgs, nav-core2, pluginlib, tf, catkin, roscpp, rosunit, roslint, visualization-msgs, nav-2d-msgs, dwb-msgs, nav-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-kinetic-dwb-local-planner";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_local_planner/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "8316981fdc61e3713156c8f83ca333a5e5d662aa6859f909bc3c7286584eacb9";
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
