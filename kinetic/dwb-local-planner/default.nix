
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, sensor-msgs, catkin, roscpp, nav-2d-msgs, rostest, nav-2d-utils, nav-msgs, dwb-msgs, visualization-msgs, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-local-planner";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_local_planner/0.2.5-0.tar.gz;
    sha256 = "8316981fdc61e3713156c8f83ca333a5e5d662aa6859f909bc3c7286584eacb9";
  };

  buildInputs = [ pluginlib nav-core2 sensor-msgs roscpp nav-2d-utils nav-msgs dwb-msgs visualization-msgs tf nav-2d-msgs geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ pluginlib nav-core2 sensor-msgs roscpp nav-2d-utils nav-msgs dwb-msgs visualization-msgs tf nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based local planner implementing the nav_core2::LocalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
