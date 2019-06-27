
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sound-play, message-generation, message-runtime, dynamic-reconfigure, roscpp, nkf }:
buildRosPackage {
  pname = "ros-kinetic-voice-text";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/voice_text/2.1.12-1.tar.gz;
    sha256 = "25fc2f4d5d8cca5ba537f9b0c8583551ef4d2f28ccf117f335a0c24c68d43d1c";
  };

  buildInputs = [ message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure nkf message-runtime sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA License" ];
  };
}
