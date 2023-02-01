
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-msgs, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-distance-map-rviz";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "artivis";
        repo = "distance_map-release";
        rev = "release/melodic/distance_map_rviz/0.1.0-1";
        sha256 = "sha256-eJPG6pMVVsWCPE+WZX7WA7tOIStN7y/jJiPLEQrdz2A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ distance-map-msgs qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugin for the visualization of ditance maps.'';
    license = with lib.licenses; [ asl20 ];
  };
}
