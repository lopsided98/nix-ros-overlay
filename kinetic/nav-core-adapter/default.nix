
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-2d-utils, geometry-msgs, nav-grid, nav-core2, pluginlib, tf, catkin, roslint, costmap-2d, nav-core, dwb-local-planner, visualization-msgs, nav-2d-msgs, dwb-critics, dwb-plugins, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-nav-core-adapter";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_core_adapter/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "d87e5ed6e855c6ae40f003617a9aa91599c4d2d9afcfae70c9181774cacf1efc";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-grid nav-core2 pluginlib tf costmap-2d nav-core visualization-msgs nav-2d-msgs nav-msgs nav-2d-utils ];
  checkInputs = [ roslint dwb-local-planner dwb-critics dwb-plugins rostest ];
  propagatedBuildInputs = [ geometry-msgs nav-grid nav-core2 pluginlib tf costmap-2d nav-core visualization-msgs nav-2d-msgs nav-msgs nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains adapters for using `nav_core` plugins as `nav_core2` plugins and vice versa (more or less).
      See README.md for more information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
