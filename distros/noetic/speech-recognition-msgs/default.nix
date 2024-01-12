
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-speech-recognition-msgs";
  version = "4.3.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/noetic/speech_recognition_msgs/4.3.2-1.tar.gz";
    name = "4.3.2-1.tar.gz";
    sha256 = "4f1067d8b1b1cc7cf174a5b917e532c83fe65b55efa809a4f4bf6eb42abd7e1a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''speech_recognition_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
