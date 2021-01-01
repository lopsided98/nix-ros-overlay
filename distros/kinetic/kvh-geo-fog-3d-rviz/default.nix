
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, kvh-geo-fog-3d-msgs, qt5, roslint, rviz }:
buildRosPackage {
  pname = "ros-kinetic-kvh-geo-fog-3d-rviz";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/kinetic/kvh_geo_fog_3d_rviz/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "10121dd44b97bd8c939bea44be8a8cfda1035f193d8e168aebdbea4e32725444";
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
