
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libg2o, geometry-msgs, message-generation, message-runtime, mbf-costmap-core, tf2-geometry-msgs, catkin, tf2-ros, nav-msgs, std-msgs, visualization-msgs, roscpp, costmap-2d, cmake-modules, base-local-planner, pluginlib, mbf-msgs, nav-core, tf2, costmap-converter, interactive-markers, dynamic-reconfigure, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/melodic/teb_local_planner/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "7fe22efb10e905a9f2787049c7c826c33f2d3273b24e81c12d42812d7b07f7c6";
  };

  buildType = "catkin";
  buildInputs = [ libg2o dynamic-reconfigure geometry-msgs message-generation mbf-costmap-core tf2-geometry-msgs tf2-ros nav-msgs std-msgs roscpp visualization-msgs costmap-2d cmake-modules base-local-planner pluginlib mbf-msgs nav-core tf2 costmap-converter interactive-markers tf2-eigen ];
  propagatedBuildInputs = [ costmap-2d mbf-costmap-core pluginlib base-local-planner libg2o mbf-msgs nav-core tf2-ros tf2 nav-msgs message-runtime costmap-converter dynamic-reconfigure std-msgs interactive-markers visualization-msgs roscpp geometry-msgs ];
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
