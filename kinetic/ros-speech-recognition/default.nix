
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, speech-recognition-msgs, audio-capture, catkin, sound-play, dynamic-reconfigure, audio-common-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-speech-recognition";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ros_speech_recognition/2.1.11-0.tar.gz;
    sha256 = "edc6c554e03c297738cdc9f2bc123adac1065c178da8bbf3fdc27e528cafc76b";
  };

  buildInputs = [ speech-recognition-msgs dynamic-reconfigure ];
  propagatedBuildInputs = [ speech-recognition-msgs audio-capture sound-play dynamic-reconfigure audio-common-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for Python SpeechRecognition library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
