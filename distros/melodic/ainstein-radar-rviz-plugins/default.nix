
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, pcl, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-rviz-plugins";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_rviz_plugins/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d293cc93d7f1b1e31e93eda9de9cf260b065feb034c5ad24df3f18ee979079a6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs pcl qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar message type plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
