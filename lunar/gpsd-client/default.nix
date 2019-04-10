
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pkg-config, gspd, gps-common, roscpp }:
buildRosPackage {
  pname = "ros-lunar-gpsd-client";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/lunar/gpsd_client/0.2.0-0.tar.gz;
    sha256 = "f0c38dcd6854cd496faff9b2af9681be8365e6cc0f96d271c20fa1eef50b0506";
  };

  buildInputs = [ gspd gps-common sensor-msgs roscpp pkg-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    #license = lib.licenses.BSD;
  };
}
