
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-filters, ainstein-radar-msgs, catkin, cv-bridge, image-geometry, image-transport, pcl-ros, roscpp, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-tools";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_tools/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "3bbfb7e1c2ef0fd3f0fe0c15f221af655b21909cb500ca92991b73e909fd31af";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-filters ainstein-radar-msgs cv-bridge image-geometry image-transport pcl-ros roscpp sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for monitoring and validating radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
