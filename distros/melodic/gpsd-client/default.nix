
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd, pkg-config, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-gpsd-client";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gpsd_client/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "9638164d61ad7d708032f5068f873980b4090b70726cb3147fb50c4d73789a89";
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
