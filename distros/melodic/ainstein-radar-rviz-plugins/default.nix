
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, pcl, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-rviz-plugins";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_rviz_plugins/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "925bfeea971400c6668acbd62007ca50d96ad4e1636bd79b870926cf0787e652";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs pcl qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar message type plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
