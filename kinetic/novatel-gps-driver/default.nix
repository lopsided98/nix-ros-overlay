
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, swri-string-util, swri-serial-util, boost, libpcap, tf, sensor-msgs, catkin, swri-nodelet, diagnostic-updater, gps-common, swri-roscpp, nav-msgs, nodelet, novatel-gps-msgs, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-novatel-gps-driver";
  version = "3.7.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/kinetic/novatel_gps_driver/3.7.0-0.tar.gz;
    sha256 = "f2ec830477706da0cd6540d4f265ce6f7eae43b3720450ef04ea36ba20df331b";
  };

  propagatedBuildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet roscpp diagnostic-updater gps-common swri-roscpp nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];
  nativeBuildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet catkin roscpp diagnostic-updater gps-common swri-roscpp nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    #license = lib.licenses.BSD;
  };
}
