
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, kvh-geo-fog-3d-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rosunit, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-kvh-geo-fog-3d-driver";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/noetic/kvh_geo_fog_3d_driver/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "a4b21fb5cea577af79ef19fd9feb96625daba8af93b5c10fd57158f9d50ed6b2";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure geometry-msgs kvh-geo-fog-3d-msgs message-generation message-runtime nav-msgs roscpp sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the KVH Geo Fog 3D INS family of systems.'';
    license = with lib.licenses; [ asl20 ];
  };
}
