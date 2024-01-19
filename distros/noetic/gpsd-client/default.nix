
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd, pkg-config, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-gpsd-client";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/noetic/gpsd_client/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "ad74c898ec97ef7a030c1b253bf1998246c87fbf0446edf9a71f8e4d1450a5ad";
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
