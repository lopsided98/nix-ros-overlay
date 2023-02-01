
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, pcl, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-rviz-plugins";
  version = "2.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "AinsteinAI";
        repo = "ainstein_radar-release";
        rev = "release/melodic/ainstein_radar_rviz_plugins/2.0.2-1";
        sha256 = "sha256-fBQazkhloznCkdQvhFgGq1FvveGVvYUfah0aNcewuDo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ainstein-radar-msgs pcl qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar message type plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
