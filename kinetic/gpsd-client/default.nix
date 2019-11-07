
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, gpsd, pkg-config, gps-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-gpsd-client";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/kinetic/gpsd_client/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9b5ec2395979832b2005091569a757a07054964ad3e7ab5ed195c2e05a6ca6b5";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs gpsd pkg-config gps-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
