
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sound-play, message-generation, message-runtime, dynamic-reconfigure, roscpp, nkf }:
buildRosPackage {
  pname = "ros-melodic-voice-text";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/voice_text/2.1.11-0.tar.gz;
    sha256 = "37a4a26a48a53442967a596d029751ca64270ad49531b78436a68abc482616c8";
  };

  buildInputs = [ message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure nkf message-runtime sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    #license = lib.licenses.HOYA License;
  };
}
