
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, pcl, catkin, rviz, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-rviz-plugins";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_rviz_plugins/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c4b69b49a9fa15969418f1a5c2bf4b80757ef3c7115b9ac3631de52a4a7abd6a";
  };

  buildType = "catkin";
  buildInputs = [ ainstein-radar-msgs rviz qt5.qtbase ];
  propagatedBuildInputs = [ pcl ainstein-radar-msgs rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar message type plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
