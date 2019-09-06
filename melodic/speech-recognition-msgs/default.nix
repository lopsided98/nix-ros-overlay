
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-speech-recognition-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/speech_recognition_msgs/4.3.1-0.tar.gz";
    name = "4.3.1-0.tar.gz";
    sha256 = "f6b39c252c011e5572aa0a1fed50b3ecdefa2abe7c96da0259fd1e578cac6541";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''speech_recognition_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
