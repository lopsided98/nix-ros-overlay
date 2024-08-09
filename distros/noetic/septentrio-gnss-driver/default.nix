
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, geographiclib, geometry-msgs, gps-common, libpcap, message-generation, message-runtime, nav-msgs, nmea-msgs, roscpp, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-septentrio-gnss-driver";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver-release/archive/release/noetic/septentrio_gnss_driver/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "ceabe786a10ef4d6665701d152b09c6c0f0dac20dc70f27e23be160f1974d99e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost diagnostic-msgs geographiclib geometry-msgs gps-common libpcap message-runtime nav-msgs nmea-msgs roscpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROSaic: C++ driver for Septentrio's GNSS and INS receivers";
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
