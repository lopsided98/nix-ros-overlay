
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pulseaudio, gtk3, gtk2, git, wget, alsaLib, cmake, glib }:
buildRosPackage {
  pname = "ros-melodic-webrtc";
  version = "59.0.3";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/melodic/webrtc/59.0.3-0.tar.gz;
    sha256 = "bdc2b6651bda28702a87bdc1cb9a53dbcd5a47dc7363d71bd81ea87dc0271e77";
  };

  propagatedBuildInputs = [ alsaLib pulseaudio gtk3 gtk2 glib ];
  nativeBuildInputs = [ alsaLib pulseaudio gtk3 git wget gtk2 cmake glib ];

  meta = {
    description = ''WebRTC Native API'';
    #license = lib.licenses.BSD;
  };
}
