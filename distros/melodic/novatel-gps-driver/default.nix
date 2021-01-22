
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, gps-common, libpcap, nav-msgs, nodelet, novatel-gps-msgs, roscpp, sensor-msgs, std-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-serial-util, swri-string-util, tf }:
buildRosPackage {
  pname = "ros-melodic-novatel-gps-driver";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/melodic/novatel_gps_driver/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "6ef15030ebde3bece473d8bbddc617d7e58b972e4de490e48e63b1e885ad06f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater gps-common libpcap nav-msgs nodelet novatel-gps-msgs roscpp sensor-msgs std-msgs swri-math-util swri-nodelet swri-roscpp swri-serial-util swri-string-util tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
