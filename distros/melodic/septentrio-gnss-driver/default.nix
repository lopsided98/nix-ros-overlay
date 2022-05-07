
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, diagnostic-msgs, geographiclib, geometry-msgs, gps-common, libpcap, message-generation, message-runtime, nav-msgs, nmea-msgs, rosconsole, roscpp, roscpp-serialization, rostime, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-septentrio-gnss-driver";
  version = "1.1.0-r8";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver-release/archive/release/melodic/septentrio_gnss_driver/1.1.0-8.tar.gz";
    name = "1.1.0-8.tar.gz";
    sha256 = "8e870ed6082be60ffa5b56966dd3396a8ae1e7c46bc37b8f60c3ee16d39b3fea";
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
