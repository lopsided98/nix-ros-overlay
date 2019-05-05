
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, swri-string-util, swri-serial-util, boost, libpcap, tf, sensor-msgs, catkin, swri-nodelet, diagnostic-updater, gps-common, swri-roscpp, nav-msgs, nodelet, novatel-gps-msgs, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-novatel-gps-driver";
  version = "3.7.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/melodic/novatel_gps_driver/3.7.0-0.tar.gz;
    sha256 = "8d7d9c7c914c2c60d8ca5e17567bdbc138c12794dc3b1c402acf119880043094";
  };

  buildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet roscpp diagnostic-updater gps-common swri-roscpp nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];
  propagatedBuildInputs = [ swri-math-util swri-string-util swri-serial-util boost libpcap sensor-msgs swri-nodelet roscpp diagnostic-updater gps-common swri-roscpp nav-msgs nodelet novatel-gps-msgs std-msgs diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
