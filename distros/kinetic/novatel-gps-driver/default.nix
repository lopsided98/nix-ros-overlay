
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, gps-common, libpcap, nav-msgs, nodelet, novatel-gps-msgs, roscpp, sensor-msgs, std-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-serial-util, swri-string-util, tf }:
buildRosPackage {
  pname = "ros-kinetic-novatel-gps-driver";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/kinetic/novatel_gps_driver/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "964d5169141a20a251cd6a5f68a314d9aec02ef97d0ba4369ece3ec1bc71969f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater gps-common libpcap nav-msgs nodelet novatel-gps-msgs roscpp sensor-msgs std-msgs swri-math-util swri-nodelet swri-roscpp swri-serial-util swri-string-util tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
