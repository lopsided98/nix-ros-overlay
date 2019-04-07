
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pkg-config, gspd, gps-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-gpsd-client";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/kinetic/gpsd_client/0.2.0-0.tar.gz;
    sha256 = "65374d1b731fbb14f66284e274ed13089439964e40e6f827d8189bd261385eab";
  };

  buildInputs = [ gspd gps-common sensor-msgs roscpp pkg-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    #license = lib.licenses.BSD;
  };
}
