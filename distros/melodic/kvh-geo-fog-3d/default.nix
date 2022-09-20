
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kvh-geo-fog-3d-driver, kvh-geo-fog-3d-msgs, kvh-geo-fog-3d-rviz }:
buildRosPackage {
  pname = "ros-melodic-kvh-geo-fog-3d";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/melodic/kvh_geo_fog_3d/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "dd37181032cc101a812e169099344c177d61c29e3942d071063bd83c90a6f0cf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ kvh-geo-fog-3d-driver kvh-geo-fog-3d-msgs kvh-geo-fog-3d-rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a driver node for KVH GEO FOG 3D INS sensors, messages, and rviz plugins.'';
    license = with lib.licenses; [ asl20 ];
  };
}
