
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, control-toolbox, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, pluginlib, roscpp, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-eband-local-planner";
  version = "0.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "utexas-bwi-gbp";
        repo = "eband_local_planner-release";
        rev = "release/melodic/eband_local_planner/0.4.0-1";
        sha256 = "sha256-SaGeuQz9z/FAVwfXeeOffKPf7mZn5dqe7wczd0tuIm8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ base-local-planner control-toolbox costmap-2d dynamic-reconfigure geometry-msgs nav-core nav-msgs pluginlib roscpp tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eband_local_planner implements a plugin to the
    base_local_planner. It implements the Elastic Band method on the
    SE2 manifold.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
