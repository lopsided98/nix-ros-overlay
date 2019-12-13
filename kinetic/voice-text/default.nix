
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, nkf, roscpp, sound-play }:
buildRosPackage {
  pname = "ros-kinetic-voice-text";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/voice_text/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "7e4aa2eb7e60422f0770c8f8b19a34643d569847bcf1047ffbf41e5cb90cfe60";
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
