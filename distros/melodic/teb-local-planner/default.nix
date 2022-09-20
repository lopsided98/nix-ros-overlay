
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, costmap-converter, dynamic-reconfigure, geometry-msgs, interactive-markers, libg2o, mbf-costmap-core, mbf-msgs, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/melodic/teb_local_planner/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "a1052cfa296cd74da059953a01bf0d5cfea8c24f7ef910117ba998fa12f44ff8";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation tf2-eigen tf2-geometry-msgs ];
  propagatedBuildInputs = [ base-local-planner costmap-2d costmap-converter dynamic-reconfigure geometry-msgs interactive-markers libg2o mbf-costmap-core mbf-msgs message-runtime nav-core nav-msgs pluginlib roscpp std-msgs tf2 tf2-ros visualization-msgs ];
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
