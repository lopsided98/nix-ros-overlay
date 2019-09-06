
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, swri-string-util, swri-serial-util, boost, libpcap, tf, sensor-msgs, catkin, swri-nodelet, diagnostic-updater, gps-common, swri-roscpp, nav-msgs, nodelet, novatel-gps-msgs, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-novatel-gps-driver";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/melodic/novatel_gps_driver/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "6ef15030ebde3bece473d8bbddc617d7e58b972e4de490e48e63b1e885ad06f8";
  };

  buildType = "catkin";
  buildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet roscpp diagnostic-updater gps-common swri-roscpp nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];
  propagatedBuildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet roscpp diagnostic-updater swri-roscpp gps-common nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
