
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ainstein-radar-msgs, pcl, rviz, qt5 }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-rviz-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_rviz_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e55ca73701363e257bdd186d2d355076015b7e3832ec9b1ac4a49088774b4a8a";
  };

  buildType = "catkin";
  buildInputs = [ rviz ainstein-radar-msgs qt5.qtbase ];
  propagatedBuildInputs = [ rviz pcl ainstein-radar-msgs qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar message type plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
