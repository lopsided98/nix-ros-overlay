
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-filters, ainstein-radar-msgs, catkin, cv-bridge, image-geometry, image-transport, pcl-ros, roscpp, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-tools";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_tools/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "fbb4ccb20a888ce31f3a19e97e8ee05fb71f791f3cab227b9befeea211aed91e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-filters ainstein-radar-msgs cv-bridge image-geometry image-transport pcl-ros roscpp sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for monitoring and validating radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
