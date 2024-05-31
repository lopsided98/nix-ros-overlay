
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, geographiclib, geometry-msgs, gps-common, libpcap, message-generation, message-runtime, nav-msgs, nmea-msgs, roscpp, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-septentrio-gnss-driver";
  version = "1.4.0-r5";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver-release/archive/release/noetic/septentrio_gnss_driver/1.4.0-5.tar.gz";
    name = "1.4.0-5.tar.gz";
    sha256 = "5ba69e882175f617a6ff22ff64b33b5e6881e64aee1f00acac56649092f92deb";
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
