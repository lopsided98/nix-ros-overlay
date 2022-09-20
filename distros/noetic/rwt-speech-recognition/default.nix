
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-server, roslaunch, rostest, roswww, rwt-utils-3rdparty, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-noetic-rwt-speech-recognition";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_speech_recognition/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "b5fdcff1cf76090761045ed4a5321835c0dea1a51fd1ac54e3a48ef71f480e0b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ rosbridge-server roswww rwt-utils-3rdparty speech-recognition-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_speech_recognition package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
