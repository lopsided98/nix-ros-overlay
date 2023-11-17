
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-to-spectrogram, catkin, catkin-virtualenv, image-view, jsk-recognition-msgs, jsk-topic-tools, message-filters, message-generation, message-runtime, roslaunch, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-sound-classification";
  version = "1.2.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/sound_classification/1.2.17-1.tar.gz";
    name = "1.2.17-1.tar.gz";
    sha256 = "3316141749e3a3de6aa816ec54e3c0618b88999981cd5b421c7a65c3e8a85a9f";
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
