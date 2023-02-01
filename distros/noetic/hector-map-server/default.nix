
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-marker-drawing, hector-nav-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-map-server";
  version = "0.5.2-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_slam-release";
        rev = "release/noetic/hector_map_server/0.5.2-4";
        sha256 = "sha256-enKeqBBc6fo7xxbTm5ZQHQSkj3E2pj6yr4yFkoxcnYA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-map-tools hector-marker-drawing hector-nav-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_server provides a service for retrieving the map, as well as for raycasting based obstacle queries (finds next obstacle in the map, given start and endpoint
    in any tf coordinate frame).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
