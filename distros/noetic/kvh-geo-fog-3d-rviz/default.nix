
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, kvh-geo-fog-3d-msgs, qt5, roslint, rviz }:
buildRosPackage {
  pname = "ros-noetic-kvh-geo-fog-3d-rviz";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/noetic/kvh_geo_fog_3d_rviz/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "e1fa880c67be39646d09d36eb4707c89429ae39fc544e7d931770f8eddd422e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg roslint ];
  propagatedBuildInputs = [ diagnostic-msgs kvh-geo-fog-3d-msgs rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The KVH GEO FOG 3D rviz plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
