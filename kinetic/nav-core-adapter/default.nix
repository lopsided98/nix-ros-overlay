
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-grid, roslint, tf, nav-core2, catkin, nav-core, nav-2d-msgs, dwb-plugins, dwb-critics, rostest, nav-2d-utils, nav-msgs, visualization-msgs, dwb-local-planner, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-core-adapter";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_core_adapter/0.2.5-0.tar.gz;
    sha256 = "d87e5ed6e855c6ae40f003617a9aa91599c4d2d9afcfae70c9181774cacf1efc";
  };

  buildInputs = [ costmap-2d pluginlib nav-grid nav-core2 nav-core nav-2d-utils nav-msgs visualization-msgs tf nav-2d-msgs geometry-msgs ];
  checkInputs = [ rostest roslint dwb-local-planner dwb-critics dwb-plugins ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-grid nav-core2 nav-core nav-2d-utils nav-msgs visualization-msgs tf nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains adapters for using `nav_core` plugins as `nav_core2` plugins and vice versa (more or less).
      See README.md for more information.'';
    #license = lib.licenses.BSD;
  };
}
