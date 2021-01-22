
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, kvh-geo-fog-3d-msgs, qt5, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-kvh-geo-fog-3d-rviz";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/melodic/kvh_geo_fog_3d_rviz/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "e83f6fca4f5fea627273634cc6a32b1cd72f6afde9120ef2d57b319b4c9e7265";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg roslint ];
  propagatedBuildInputs = [ diagnostic-msgs kvh-geo-fog-3d-msgs rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The KVH GEO FOG 3D rviz plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
