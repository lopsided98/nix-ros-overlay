
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geodesy, quaternion-operation, glog, eigen, roscpp, nmea-msgs }:
buildRosPackage {
  pname = "ros-melodic-nmea-to-geopose";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/nmea_to_geopose-release/archive/release/melodic/nmea_to_geopose/0.0.1-1.tar.gz;
    sha256 = "9a705961193571ef80203ffd1781ed1e7fe15da637764495484e2c4679377fc0";
  };

  buildInputs = [ geographic-msgs geodesy quaternion-operation glog eigen roscpp nmea-msgs ];
  propagatedBuildInputs = [ geographic-msgs geodesy quaternion-operation glog eigen roscpp nmea-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_to_geopose package'';
    license = with lib.licenses; [ "Apachi 2" ];
  };
}
