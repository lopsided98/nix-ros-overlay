
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libg2o, tf-conversions, tf, geometry-msgs, message-generation, message-runtime, catkin, nav-msgs, std-msgs, visualization-msgs, roscpp, costmap-2d, pluginlib, cmake-modules, base-local-planner, nav-core, interactive-markers, costmap-converter, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-teb-local-planner";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/kinetic/teb_local_planner/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "281684f9f49ebaea307092c83898bda40652add551b7e7058ad6621952a60b5e";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib cmake-modules base-local-planner libg2o nav-core roscpp message-generation nav-msgs interactive-markers costmap-converter dynamic-reconfigure std-msgs tf-conversions visualization-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner libg2o tf nav-core nav-msgs message-runtime costmap-converter dynamic-reconfigure std-msgs interactive-markers visualization-msgs roscpp tf-conversions geometry-msgs ];
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
