
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, costmap-converter, dynamic-reconfigure, geometry-msgs, interactive-markers, libg2o, mbf-costmap-core, mbf-msgs, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner";
  version = "0.8.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rst-tu-dortmund";
        repo = "teb_local_planner-release";
        rev = "release/melodic/teb_local_planner/0.8.4-1";
        sha256 = "sha256-1jmnZEVmUwsAYvFINyhVLGTiCiqh7t7i6Dt9SPNs1N4=";
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
