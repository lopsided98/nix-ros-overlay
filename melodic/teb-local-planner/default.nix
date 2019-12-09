
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, interactive-markers, pluginlib, tf2, nav-msgs, dynamic-reconfigure, cmake-modules, tf2-geometry-msgs, tf2-ros, costmap-converter, std-msgs, catkin, costmap-2d, nav-core, roscpp, message-generation, mbf-msgs, libg2o, base-local-planner, tf2-eigen, mbf-costmap-core, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/melodic/teb_local_planner/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "a1052cfa296cd74da059953a01bf0d5cfea8c24f7ef910117ba998fa12f44ff8";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs interactive-markers pluginlib tf2 nav-msgs dynamic-reconfigure cmake-modules tf2-geometry-msgs tf2-ros costmap-converter std-msgs costmap-2d nav-core roscpp message-generation mbf-msgs libg2o base-local-planner tf2-eigen mbf-costmap-core visualization-msgs ];
  propagatedBuildInputs = [ tf2-ros costmap-converter geometry-msgs dynamic-reconfigure interactive-markers pluginlib std-msgs base-local-planner roscpp costmap-2d nav-core mbf-costmap-core visualization-msgs tf2 message-runtime mbf-msgs nav-msgs libg2o ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner package implements a plugin
    to the base_local_planner of the 2D navigation stack.
    The underlying method called Timed Elastic Band locally optimizes
    the robot's trajectory with respect to trajectory execution time,
    separation from obstacles and compliance with kinodynamic constraints at runtime.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
