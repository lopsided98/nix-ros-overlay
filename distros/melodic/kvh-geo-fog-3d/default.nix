
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kvh-geo-fog-3d-driver, kvh-geo-fog-3d-msgs, kvh-geo-fog-3d-rviz }:
buildRosPackage {
  pname = "ros-melodic-kvh-geo-fog-3d";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/melodic/kvh_geo_fog_3d/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "014ddc8b7bf8a2239353b8aa0b6bce023d2b809d407284eb8ef4de6e505149b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kvh-geo-fog-3d-driver kvh-geo-fog-3d-msgs kvh-geo-fog-3d-rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a driver node for KVH GEO FOG 3D INS sensors, messages, and rviz plugins.'';
    license = with lib.licenses; [ asl20 ];
  };
}
