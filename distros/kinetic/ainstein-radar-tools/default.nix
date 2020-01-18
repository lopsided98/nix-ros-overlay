
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-filters, ainstein-radar-msgs, catkin, cv-bridge, image-geometry, image-transport, pcl-ros, roscpp, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-tools";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_tools/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "78a6c18b25c77cea7d706d10a09555f1872261576fff9e0834aba09a61b86760";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-filters ainstein-radar-msgs cv-bridge image-geometry image-transport pcl-ros roscpp sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for monitoring and validating radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
