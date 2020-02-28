
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, control-box-rst, costmap-2d, costmap-converter, dynamic-reconfigure, eigen, geometry-msgs, interactive-markers, mbf-costmap-core, mbf-msgs, mpc-local-planner-msgs, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, teb-local-planner, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mpc-local-planner";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/melodic/mpc_local_planner/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "412bcbb02d2232ba66f7a7049196f8f9c2f31356c6e4282b5f72535edf5066ba";
  };

  buildType = "catkin";
  buildInputs = [ tf2-eigen tf2-geometry-msgs ];
  propagatedBuildInputs = [ base-local-planner control-box-rst costmap-2d costmap-converter dynamic-reconfigure eigen geometry-msgs interactive-markers mbf-costmap-core mbf-msgs mpc-local-planner-msgs nav-core nav-msgs pluginlib roscpp std-msgs teb-local-planner tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mpc_local_planner package implements a plugin
    to the base_local_planner of the 2D navigation stack.
    It provides a generic and versatile model predictive control implementation
    with minimum-time and quadratic-form receding-horizon configurations.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
