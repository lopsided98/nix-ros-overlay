
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, alsaLib, cmake, git, glib, gtk2, gtk3, pulseaudio, wget }:
buildRosPackage {
  pname = "ros-melodic-webrtc";
  version = "59.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/melodic/webrtc/59.0.4-1.tar.gz";
    name = "59.0.4-1.tar.gz";
    sha256 = "2889d9f998f589846868676e8bed291496807b9bb8e8f88bbdbf97b8ab5223a6";
  };

  buildType = "cmake";
  buildInputs = [ cmake git wget ];
  propagatedBuildInputs = [ alsaLib glib gtk2 gtk3 pulseaudio ];
  nativeBuildInputs = [ cmake git wget ];

  meta = {
    description = ''WebRTC Native API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
