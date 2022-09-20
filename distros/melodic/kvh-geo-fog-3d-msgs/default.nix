
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-kvh-geo-fog-3d-msgs";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/melodic/kvh_geo_fog_3d_msgs/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "80c23203e375105bd7e99139b21ddce46d251c4ce43709ef3c1f80f91ef65107";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''kvh_geo_fog_3d_msgs contains raw messages for the KVH GEO FOG 3D INS devices.'';
    license = with lib.licenses; [ asl20 ];
  };
}
