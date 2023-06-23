
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, nkf, roscpp, sound-play }:
buildRosPackage {
  pname = "ros-noetic-voice-text";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/voice_text/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "bfd97a07a4d42178e42cefac4574681aee3632810e93792cffec5a0b8956a367";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA-License" ];
  };
}
