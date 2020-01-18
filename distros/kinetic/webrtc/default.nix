
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, alsaLib, cmake, git, glib, gtk2, gtk3, pulseaudio, wget }:
buildRosPackage {
  pname = "ros-kinetic-webrtc";
  version = "59.0.3";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/kinetic/webrtc/59.0.3-0.tar.gz";
    name = "59.0.3-0.tar.gz";
    sha256 = "afa18dd5fdfadd08f2c2707c74d3119beabe30017a946d973176d56ce9b24094";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ alsaLib glib gtk2 gtk3 pulseaudio ];
  nativeBuildInputs = [ cmake git wget ];

  meta = {
    description = ''WebRTC Native API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
