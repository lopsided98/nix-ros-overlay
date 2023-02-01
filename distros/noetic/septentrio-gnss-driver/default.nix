
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, diagnostic-msgs, geographiclib, geometry-msgs, gps-common, libpcap, message-generation, message-runtime, nav-msgs, nmea-msgs, rosconsole, roscpp, roscpp-serialization, rostime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-septentrio-gnss-driver";
  version = "1.2.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "septentrio-users";
        repo = "septentrio_gnss_driver-release";
        rev = "release/noetic/septentrio_gnss_driver/1.2.3-1";
        sha256 = "sha256-l8gWw/6QWUgcxGhCFwHKBpRwASdfyI5E+lHNGAUvPNY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost cpp-common diagnostic-msgs geographiclib geometry-msgs gps-common libpcap message-runtime nav-msgs nmea-msgs rosconsole roscpp roscpp-serialization rostime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROSaic: C++ driver for Septentrio's mosaic receivers and beyond'';
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
