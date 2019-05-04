
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-speech-recognition-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/speech_recognition_msgs/4.3.1-0.tar.gz;
    sha256 = "bb5f1a028ac1bdf5b06c306180309aff700fc73898efed5a3b5b930f7eb3ec7d";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''speech_recognition_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
