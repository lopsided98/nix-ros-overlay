
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, kvh-geo-fog-3d-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rosunit, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-kvh-geo-fog-3d-driver";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/kinetic/kvh_geo_fog_3d_driver/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "634de4b086732a75c0cf67374c1d2473c0ae09dabcce7ef1e423b113fbde53e4";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure geometry-msgs kvh-geo-fog-3d-msgs message-generation message-runtime nav-msgs roscpp sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the KVH Geo Fog 3D INS family of systems.'';
    license = with lib.licenses; [ asl20 ];
  };
}
