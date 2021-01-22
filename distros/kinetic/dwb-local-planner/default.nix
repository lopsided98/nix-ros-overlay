
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-local-planner";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_local_planner/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "961dca6c19d999631c6e84785195ad26760583ce59a98a77c31bb8947450d4ad";
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
