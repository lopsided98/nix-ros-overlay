
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd, pkg-config, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-gpsd-client";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/noetic/gpsd_client/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "be0044d18339e3a92478f87448d84b8364e491389bacd071825e70ee26ed070a";
  };

  buildType = "catkin";
  buildInputs = [ gps-common gpsd pkg-config roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
