
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-geometry, map-msgs, nav-msgs, roscpp, roslaunch, rosunit, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-multirobot-map-merge";
  version = "2.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "hrnr";
        repo = "m-explore-release";
        rev = "release/melodic/multirobot_map_merge/2.1.4-1";
        sha256 = "sha256-y2/4j5S1DXEjv860XEhaPFk5KNqljNLeCYxbgkgL2XA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ geometry-msgs image-geometry map-msgs nav-msgs roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Merging multiple maps without knowledge of initial
  positions of robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
