
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, catkin, cv-bridge, image-view, jsk-recognition-msgs, pythonPackages, roslaunch, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-audio-to-spectrogram";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/audio_to_spectrogram/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "eb131626efa97d8fd7ad1c1cc3a6b071cac03f0e746aeae6b3b7b2bf4cf06e28";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ audio-capture audio-common-msgs cv-bridge image-view jsk-recognition-msgs pythonPackages.matplotlib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Convert audio (audio_common_msgs/AudioData) to spectrogram (sensor_msgs/Image)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
