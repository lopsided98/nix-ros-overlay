
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd, pkg-config, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-gpsd-client";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gpsd_client/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "adf1eb7857e1de99693e8b0826b037bc3562caf6f21e015d0023146e21d47ecd";
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
