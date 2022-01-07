
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, diagnostic-msgs, geometry-msgs, gps-common, libpcap, message-generation, message-runtime, rosconsole, roscpp, roscpp-serialization, rostime, sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-septentrio-gnss-driver";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver-release/archive/release/melodic/septentrio_gnss_driver/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "15b96f4c8e3c695d7bf3da1dc2f356b185ca13ab65539cc75c129b78fbe80a0e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost cpp-common diagnostic-msgs geometry-msgs gps-common libpcap message-runtime rosconsole roscpp roscpp-serialization rostime sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROSaic: C++ driver for Septentrio's mosaic receivers and beyond'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
