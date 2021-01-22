
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, kvh-geo-fog-3d-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rosunit, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-kvh-geo-fog-3d-driver";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/melodic/kvh_geo_fog_3d_driver/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "f52b0818c830b2b5d5e441e36374e801844fe9ba36a8880a94be6abf7e45e7ef";
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
