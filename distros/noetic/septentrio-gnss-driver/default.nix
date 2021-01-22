
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, diagnostic-msgs, geometry-msgs, gps-common, message-generation, message-runtime, rosconsole, roscpp, roscpp-serialization, rostime, sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-septentrio-gnss-driver";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver-release/archive/release/noetic/septentrio_gnss_driver/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "64269ee89b1db63723ca48044a7481a42eeaf197567d67251e9c1bf16bdafbe5";
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
