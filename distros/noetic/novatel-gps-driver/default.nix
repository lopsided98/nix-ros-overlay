
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, gps-common, libpcap, nav-msgs, nodelet, novatel-gps-msgs, roscpp, sensor-msgs, std-msgs, swri-math-util, swri-nodelet, swri-roscpp, swri-serial-util, swri-string-util, tf }:
buildRosPackage {
  pname = "ros-noetic-novatel-gps-driver";
  version = "3.9.0-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/noetic/novatel_gps_driver/3.9.0-2.tar.gz";
    name = "3.9.0-2.tar.gz";
    sha256 = "db385458cdcd49d01f50734f2c45984973b0a5d1acb53f73d6ca8aa45d8769da";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater gps-common libpcap nav-msgs nodelet novatel-gps-msgs roscpp sensor-msgs std-msgs swri-math-util swri-nodelet swri-roscpp swri-serial-util swri-string-util tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
