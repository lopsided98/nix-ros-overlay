
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, costmap-converter, dynamic-reconfigure, geometry-msgs, interactive-markers, libg2o, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, tf, tf-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teb-local-planner";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/kinetic/teb_local_planner/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "281684f9f49ebaea307092c83898bda40652add551b7e7058ad6621952a60b5e";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ base-local-planner costmap-2d costmap-converter dynamic-reconfigure geometry-msgs interactive-markers libg2o message-runtime nav-core nav-msgs pluginlib roscpp std-msgs tf tf-conversions visualization-msgs ];
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
