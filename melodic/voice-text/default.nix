
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sound-play, message-generation, message-runtime, dynamic-reconfigure, roscpp, nkf }:
buildRosPackage {
  pname = "ros-melodic-voice-text";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/voice_text/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "f8d14548006e17aca7ff8c873fe28ff4f08d15c721467e795b9b3477eea43006";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure nkf message-runtime sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA License" ];
  };
}
