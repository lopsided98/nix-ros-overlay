
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, alsaLib, cmake, git, glib, gtk2, gtk3, pulseaudio, wget }:
buildRosPackage {
  pname = "ros-melodic-webrtc";
  version = "59.0.3";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/melodic/webrtc/59.0.3-0.tar.gz";
    name = "59.0.3-0.tar.gz";
    sha256 = "bdc2b6651bda28702a87bdc1cb9a53dbcd5a47dc7363d71bd81ea87dc0271e77";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ alsaLib glib gtk2 gtk3 pulseaudio ];
  nativeBuildInputs = [ cmake git wget ];

  meta = {
    description = ''WebRTC Native API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
