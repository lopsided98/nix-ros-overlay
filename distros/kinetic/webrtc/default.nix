
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, alsaLib, cmake, git, glib, gtk2, gtk3, pulseaudio, wget }:
buildRosPackage {
  pname = "ros-kinetic-webrtc";
  version = "59.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/kinetic/webrtc/59.0.4-1.tar.gz";
    name = "59.0.4-1.tar.gz";
    sha256 = "4aa9805ace4bccb00314202e08d7ea02f8107da8548b94c98c84fd5dbef3af79";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ alsaLib glib gtk2 gtk3 pulseaudio ];
  nativeBuildInputs = [ cmake git wget ];

  meta = {
    description = ''WebRTC Native API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
