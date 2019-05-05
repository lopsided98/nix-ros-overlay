
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-speech-recognition-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/lunar/speech_recognition_msgs/4.3.1-0.tar.gz;
    sha256 = "83c46a51fea3761f44a536354148166f99e97421eabe3473b0cf8a8c913222d2";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''speech_recognition_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
