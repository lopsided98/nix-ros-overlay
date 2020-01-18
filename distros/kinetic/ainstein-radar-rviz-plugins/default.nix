
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, pcl, qt5, rviz }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-rviz-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_rviz_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "cb85b1326a0ea194aeb4ccf005c010becb1774ad64dfd035a766abf953e649bb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs pcl qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar message type plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
