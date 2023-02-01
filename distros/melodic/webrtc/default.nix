
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, alsaLib, cmake, git, glib, gtk2, gtk3, pulseaudio, wget }:
buildRosPackage {
  pname = "ros-melodic-webrtc";
  version = "59.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RobotWebTools-release";
        repo = "webrtc_ros-release";
        rev = "release/melodic/webrtc/59.0.4-1";
        sha256 = "sha256-4DG/X7ZyxhqTXmlJ0XDyOokpNyRIKi81KVxfoiA5aO4=";
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
