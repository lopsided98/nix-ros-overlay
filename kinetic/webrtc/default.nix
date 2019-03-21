
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pulseaudio, gtk3, gtk2, git, wget, alsaLib, cmake, glib }:
buildRosPackage {
  pname = "ros-kinetic-webrtc";
  version = "59.0.3";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/kinetic/webrtc/59.0.3-0.tar.gz;
    sha256 = "afa18dd5fdfadd08f2c2707c74d3119beabe30017a946d973176d56ce9b24094";
  };

  propagatedBuildInputs = [ alsaLib pulseaudio gtk3 gtk2 glib ];
  nativeBuildInputs = [ alsaLib pulseaudio gtk3 git wget gtk2 cmake glib ];

  meta = {
    description = ''WebRTC Native API'';
    #license = lib.licenses.BSD;
  };
}
