
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kvh-geo-fog-3d-driver, kvh-geo-fog-3d-msgs, kvh-geo-fog-3d-rviz }:
buildRosPackage {
  pname = "ros-noetic-kvh-geo-fog-3d";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/noetic/kvh_geo_fog_3d/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "e2722ed45a72e67d54c1ae3ee3c474a5ae1e682c21bfd049bf4d6a44ae146061";
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
