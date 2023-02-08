
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, control-box-rst, costmap-2d, costmap-converter, dynamic-reconfigure, eigen, geometry-msgs, interactive-markers, mbf-costmap-core, mbf-msgs, mpc-local-planner-msgs, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, teb-local-planner, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mpc-local-planner";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rst-tu-dortmund";
        repo = "mpc_local_planner-release";
        rev = "release/noetic/mpc_local_planner/0.0.3-1";
        sha256 = "sha256-Jl0nXk5CrF/i/HLKUXfCvyGmxucRZz/zr25BiGihV9k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin tf2-eigen tf2-geometry-msgs ];
  propagatedBuildInputs = [ base-local-planner control-box-rst costmap-2d costmap-converter dynamic-reconfigure eigen geometry-msgs interactive-markers mbf-costmap-core mbf-msgs mpc-local-planner-msgs nav-core nav-msgs pluginlib roscpp std-msgs teb-local-planner tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mpc_local_planner package implements a plugin
    to the base_local_planner of the 2D navigation stack.
    It provides a generic and versatile model predictive control implementation
    with minimum-time and quadratic-form receding-horizon configurations.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
