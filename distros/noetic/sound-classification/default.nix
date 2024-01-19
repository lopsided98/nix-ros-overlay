
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-to-spectrogram, catkin, catkin-virtualenv, image-view, jsk-recognition-msgs, jsk-topic-tools, message-filters, message-generation, message-runtime, roslaunch, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-sound-classification";
  version = "1.2.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/sound_classification/1.2.17-2.tar.gz";
    name = "1.2.17-2.tar.gz";
    sha256 = "240fde023866c70aa6dc4488035b5243a35d51998c4f553d9acb03595220fd33";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ audio-capture audio-to-spectrogram image-view jsk-recognition-msgs jsk-topic-tools message-filters message-runtime rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sound_classification package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
