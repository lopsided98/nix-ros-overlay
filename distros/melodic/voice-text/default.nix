
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, nkf, roscpp, sound-play }:
buildRosPackage {
  pname = "ros-melodic-voice-text";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/voice_text/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "84f279188041134b65566a09eb9720eb944003f0360995f4e94c6b4d56383d4b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA License" ];
  };
}
