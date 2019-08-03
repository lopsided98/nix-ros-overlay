
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sound-play, message-generation, message-runtime, dynamic-reconfigure, roscpp, nkf }:
buildRosPackage {
  pname = "ros-kinetic-voice-text";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/voice_text/2.1.13-1.tar.gz;
    sha256 = "9e9c565b4033ccee57af086bc1ceb93476c6571938fd114fcb67c0cdf1f5ea3a";
  };

  buildInputs = [ message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure nkf message-runtime sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA License" ];
  };
}
