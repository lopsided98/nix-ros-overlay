
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, pcl, qt5, rviz }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-rviz-plugins";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_rviz_plugins/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "93d55af3cc6dddb8778692cc4c5cb9171da6344c64f8788b50db3bef7aa1ba61";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs pcl qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar message type plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
