
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-filters, ainstein-radar-msgs, catkin, cv-bridge, image-geometry, image-transport, pcl-ros, roscpp, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-tools";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_tools/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "dab485d2d37654886e080b9e037ec78897ce64b4212418a23c5bf23a7e60783b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-filters ainstein-radar-msgs cv-bridge image-geometry image-transport pcl-ros roscpp sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for monitoring and validating radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
