
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kvh-geo-fog-3d-msgs";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/MITRE/kvh_geo_fog_3d-release/archive/release/kinetic/kvh_geo_fog_3d_msgs/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "edf792bd5f98e20b48ef0f065f45c0b735691760f69069347fa15b8e646e795e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''kvh_geo_fog_3d_msgs contains raw messages for the KVH GEO FOG 3D INS devices.'';
    license = with lib.licenses; [ asl20 ];
  };
}
