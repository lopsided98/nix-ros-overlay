
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-distance-map-opencv";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "artivis";
        repo = "distance_map-release";
        rev = "release/melodic/distance_map_opencv/0.1.0-1";
        sha256 = "sha256-WOwgXIRToKVPXALyxmoDHYRQLj8ZC2S/xCCWS66OcE8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ distance-map-core image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
