
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, jsk-recognition-msgs, nodelet, pcl-ros, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-filters";
  version = "2.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "AinsteinAI";
        repo = "ainstein_radar-release";
        rev = "release/melodic/ainstein_radar_filters/2.0.2-1";
        sha256 = "sha256-cHikDl/bjgP3xpQGu8zUCKlHGxpbOE+V1EhCYdMt2q0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ainstein-radar-msgs jsk-recognition-msgs nodelet pcl-ros roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filtering and data conversion utilities for radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
