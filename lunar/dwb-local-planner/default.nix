
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, sensor-msgs, catkin, roscpp, nav-2d-msgs, rostest, nav-2d-utils, nav-msgs, dwb-msgs, visualization-msgs, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-dwb-local-planner";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/dwb_local_planner/0.2.5-0.tar.gz;
    sha256 = "96319727cc7f8adfcb88fe41a02e23bf280fd8b6ed9f817b38c9d4561524ef01";
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
