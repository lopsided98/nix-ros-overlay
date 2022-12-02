
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd, pkg-config, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-gpsd-client";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/noetic/gpsd_client/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "dc8b37e6b30d5983609a9ca86c0dea4febbd2c8b9830a5d7ce698ac2d440b5a8";
  };

  buildType = "catkin";
  buildInputs = [ catkin gps-common gpsd pkg-config roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
