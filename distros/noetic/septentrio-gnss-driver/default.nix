
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, diagnostic-msgs, geographiclib, geometry-msgs, gps-common, libpcap, message-generation, message-runtime, nav-msgs, nmea-msgs, rosconsole, roscpp, roscpp-serialization, rostime, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-septentrio-gnss-driver";
  version = "1.1.0-r7";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver-release/archive/release/noetic/septentrio_gnss_driver/1.1.0-7.tar.gz";
    name = "1.1.0-7.tar.gz";
    sha256 = "2f71fe83b75dbaf47065f37e9c4bdcff177ff20e0daa97a541445c15963ed02f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost cpp-common diagnostic-msgs geographiclib geometry-msgs gps-common libpcap message-runtime nav-msgs nmea-msgs rosconsole roscpp roscpp-serialization rostime sensor-msgs tf2 tf2-geometry-msgs tf2-ros xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROSaic: C++ driver for Septentrio's mosaic receivers and beyond'';
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
