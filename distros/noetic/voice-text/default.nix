
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, nkf, roscpp, sound-play }:
buildRosPackage {
  pname = "ros-noetic-voice-text";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/voice_text/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "3a293807335b216699d5f82d2bd988cf8128f63939805d98e3fbb86d4c15a0b8";
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
