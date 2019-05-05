
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, swri-string-util, swri-serial-util, boost, libpcap, tf, sensor-msgs, catkin, swri-nodelet, diagnostic-updater, gps-common, swri-roscpp, nav-msgs, nodelet, novatel-gps-msgs, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-novatel-gps-driver";
  version = "3.6.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/lunar/novatel_gps_driver/3.6.0-0.tar.gz;
    sha256 = "50456660ac9bfb164cd445b990f88d5f87d9275b60e595f0b44ade41da46967f";
  };

  buildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet roscpp diagnostic-updater gps-common swri-roscpp nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];
  propagatedBuildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet roscpp diagnostic-updater gps-common swri-roscpp nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
