
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, diagnostic-msgs, swri-string-util, std-msgs, swri-serial-util, tf, swri-nodelet, catkin, swri-math-util, libpcap, nodelet, roscpp, diagnostic-updater, gps-common, nav-msgs, novatel-gps-msgs, swri-roscpp }:
buildRosPackage {
  pname = "ros-melodic-novatel-gps-driver";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/melodic/novatel_gps_driver/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "6ef15030ebde3bece473d8bbddc617d7e58b972e4de490e48e63b1e885ad06f8";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs diagnostic-msgs swri-string-util std-msgs swri-serial-util tf swri-nodelet swri-math-util libpcap nodelet roscpp diagnostic-updater gps-common nav-msgs novatel-gps-msgs swri-roscpp ];
  propagatedBuildInputs = [ sensor-msgs boost diagnostic-msgs swri-string-util std-msgs swri-serial-util tf swri-nodelet roscpp swri-math-util libpcap nodelet diagnostic-updater gps-common nav-msgs novatel-gps-msgs swri-roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
