
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-grid, roslint, nav-core2, catkin, nav-core, nav-2d-msgs, dwb-plugins, dwb-critics, rostest, nav-2d-utils, nav-msgs, visualization-msgs, tf, dwb-local-planner, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav-core-adapter";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_core_adapter/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "516bb752f040f0e9f4639d874211c75db1667265e326d1220d3b2f880729a336";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib nav-grid tf nav-core2 nav-core nav-2d-utils nav-msgs visualization-msgs nav-2d-msgs geometry-msgs ];
  checkInputs = [ roslint dwb-critics dwb-plugins rostest dwb-local-planner ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-grid nav-core nav-core2 nav-2d-utils nav-msgs visualization-msgs tf nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains adapters for using `nav_core` plugins as `nav_core2` plugins and vice versa (more or less).
      See README.md for more information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
