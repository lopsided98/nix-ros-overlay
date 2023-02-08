
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, interactive-markers, pluginlib, qt5, roscpp, rsm-msgs, rviz, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rsm-rviz-plugins";
  version = "1.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MarcoStb1993";
        repo = "robot_statemachine-release";
        rev = "release/melodic/rsm_rviz_plugins/1.2.1-1";
        sha256 = "sha256-ylO5ox3yuIDhQ0QJRk6DlWnkZtjuct7BNPUb20rw74A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ cmake-modules interactive-markers pluginlib roscpp rsm-msgs rviz std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rviz_plugins package includes the Robot
		Statemachine GUI plugin for RViz and the waypoint visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
