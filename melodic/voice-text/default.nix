
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sound-play, message-generation, message-runtime, dynamic-reconfigure, roscpp, nkf }:
buildRosPackage {
  pname = "ros-melodic-voice-text";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/voice_text/2.1.12-2.tar.gz;
    sha256 = "cedbe57c3cc1e746519d97faf53ce5d26261f0096448fda0b396f893351cc453";
  };

  buildInputs = [ message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure nkf message-runtime sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA License" ];
  };
}
