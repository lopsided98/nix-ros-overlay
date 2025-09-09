
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-to-spectrogram, catkin, catkin-virtualenv, image-view, jsk-recognition-msgs, jsk-topic-tools, message-filters, message-generation, message-runtime, roslaunch, rospy, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sound-classification";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/sound_classification/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "29e5ab5872069c5c111a971ffb527b5b33fb11058342c5dc22e2c52b82bc500f";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation std-msgs ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ audio-capture audio-to-spectrogram image-view jsk-recognition-msgs jsk-topic-tools message-filters message-runtime rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The sound_classification package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
