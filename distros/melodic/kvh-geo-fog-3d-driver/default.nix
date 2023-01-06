
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, kvh-geo-fog-3d-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslint, rosunit, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-kvh-geo-fog-3d-driver";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/melodic/kvh_geo_fog_3d_driver/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "c2556efa67c6dfa7ad60406fc08a3d8a618f1838a25259dd9f32794ee6792ebd";
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
