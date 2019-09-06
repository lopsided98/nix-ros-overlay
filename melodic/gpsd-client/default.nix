
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, gpsd, pkg-config, gps-common, roscpp }:
buildRosPackage {
  pname = "ros-melodic-gpsd-client";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gpsd_client/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "fb72a43064b023d7be47f00194232ca28d92aea68d92e7b32d337bbe6cfda51c";
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
