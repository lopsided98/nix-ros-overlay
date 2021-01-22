
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, catkin, cv-bridge, image-view, jsk-recognition-msgs, pythonPackages, roslaunch, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-audio-to-spectrogram";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/audio_to_spectrogram/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "1ccf4953bd8bdd966ead1f3958a21c3e90cd3101c5bbe5658f81509c345828bb";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ audio-capture audio-common-msgs cv-bridge image-view jsk-recognition-msgs pythonPackages.matplotlib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Convert audio (audio_common_msgs/AudioData) to spectrogram (sensor_msgs/Image)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
