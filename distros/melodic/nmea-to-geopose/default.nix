
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geodesy, geographic-msgs, glog, nmea-msgs, quaternion-operation, roscpp }:
buildRosPackage {
  pname = "ros-melodic-nmea-to-geopose";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/nmea_to_geopose-release/archive/release/melodic/nmea_to_geopose/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "9a705961193571ef80203ffd1781ed1e7fe15da637764495484e2c4679377fc0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen geodesy geographic-msgs glog nmea-msgs quaternion-operation roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_to_geopose package'';
    license = with lib.licenses; [ asl20 ];
  };
}
