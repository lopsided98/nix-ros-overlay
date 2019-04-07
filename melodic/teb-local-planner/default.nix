
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libg2o, geometry-msgs, message-generation, message-runtime, tf2-geometry-msgs, catkin, tf2-ros, nav-msgs, std-msgs, roscpp, visualization-msgs, costmap-2d, cmake-modules, base-local-planner, pluginlib, nav-core, tf2, costmap-converter, interactive-markers, dynamic-reconfigure, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/melodic/teb_local_planner/0.8.1-0.tar.gz;
    sha256 = "0f6781263817af727d483e50ac7316f162c00dc079234f23acbc796f44959894";
  };

  buildInputs = [ tf2-geometry-msgs libg2o tf2-ros nav-msgs dynamic-reconfigure std-msgs visualization-msgs roscpp geometry-msgs costmap-2d cmake-modules base-local-planner pluginlib nav-core tf2 message-generation costmap-converter interactive-markers tf2-eigen ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner libg2o nav-core tf2-ros tf2 nav-msgs interactive-markers costmap-converter dynamic-reconfigure std-msgs visualization-msgs message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner package implements a plugin
    to the base_local_planner of the 2D navigation stack.
    The underlying method called Timed Elastic Band locally optimizes
    the robot's trajectory with respect to trajectory execution time,
    separation from obstacles and compliance with kinodynamic constraints at runtime.'';
    #license = lib.licenses.BSD;
  };
}
