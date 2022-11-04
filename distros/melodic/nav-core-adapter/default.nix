
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dwb-critics, dwb-local-planner, dwb-plugins, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core, nav-core2, nav-grid, nav-msgs, pluginlib, roslint, rostest, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav-core-adapter";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_core_adapter/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "dcd968943080ac821ac2a892c2118706155e43ea662f1f762d7867e4e0e385b4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ dwb-critics dwb-local-planner dwb-plugins roslint rostest ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs nav-2d-msgs nav-2d-utils nav-core nav-core2 nav-grid nav-msgs pluginlib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains adapters for using `nav_core` plugins as `nav_core2` plugins and vice versa (more or less).
      See README.md for more information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
