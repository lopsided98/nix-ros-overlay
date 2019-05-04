
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pulseaudio, ogre1_9, cmake-modules, image-transport, sensor-msgs, catkin, cv-bridge, genmsg, roslib, message-generation, qt5, roslang, roscpp-serialization, std-msgs, message-runtime, roscpp, opencv3, homer-mary-tts }:
buildRosPackage {
  pname = "ros-kinetic-homer-robot-face";
  version = "1.0.18-r1";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_robot_face-release/repository/archive.tar.gz?ref=release/kinetic/homer_robot_face/1.0.18-1;
    sha256 = "1ccb99338c228b7514906092239cfe7adfea6ab72e552013cb978a5309994dc4";
  };

  buildInputs = [ pulseaudio cmake-modules ogre1_9 qt5.qtx11extras image-transport sensor-msgs cv-bridge qt5.qtbase message-generation roslang roscpp-serialization std-msgs genmsg roscpp opencv3 ];
  propagatedBuildInputs = [ pulseaudio ogre1_9 qt5.qtx11extras sensor-msgs cv-bridge qt5.qtbase roslib message-runtime roscpp-serialization std-msgs roscpp opencv3 homer-mary-tts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An application to display a talking head on your robot for human robot interaction.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
