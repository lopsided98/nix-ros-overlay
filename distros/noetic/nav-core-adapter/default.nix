
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dwb-critics, dwb-local-planner, dwb-plugins, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core, nav-core2, nav-grid, nav-msgs, pluginlib, roslint, rostest, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav-core-adapter";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_core_adapter/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "752d744a559e57210fdfa7137f9e4e3d6b6dba76611c0c0ced759718032a3381";
  };

  buildType = "catkin";
  checkInputs = [ dwb-critics dwb-local-planner dwb-plugins roslint rostest ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs nav-2d-msgs nav-2d-utils nav-core nav-core2 nav-grid nav-msgs pluginlib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains adapters for using `nav_core` plugins as `nav_core2` plugins and vice versa (more or less).
      See README.md for more information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
