
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, distance-map-msgs, nav-msgs, pluginlib, roscpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-distance-map-core";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "artivis";
        repo = "distance_map-release";
        rev = "release/melodic/distance_map_core/0.1.0-1";
        sha256 = "sha256-ZX2F0CG5GzqPcHvfnkK5kpVOfy3MCnP4urynoHKMJQc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d distance-map-msgs nav-msgs pluginlib roscpp tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The distance_map_core package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
