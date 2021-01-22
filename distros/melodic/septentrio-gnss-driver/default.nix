
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, diagnostic-msgs, geometry-msgs, gps-common, message-generation, message-runtime, rosconsole, roscpp, roscpp-serialization, rostime, sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-septentrio-gnss-driver";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver-release/archive/release/melodic/septentrio_gnss_driver/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "54c62bdfaac1432bb54ea1ec3e304bbb3b37656f6432cb3c47672a665148fac4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost cpp-common diagnostic-msgs geometry-msgs gps-common message-runtime rosconsole roscpp roscpp-serialization rostime sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROSaic: C++ driver for Septentrio's mosaic receivers and beyond'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
