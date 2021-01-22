
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, catkin, cv-bridge, image-view, jsk-recognition-msgs, python3Packages, roslaunch, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-audio-to-spectrogram";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/audio_to_spectrogram/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "0fab3f1ebc2e5af100b82a3212977344ed94c59fdac0f0bb7c71b2fb3b65d216";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ audio-capture audio-common-msgs cv-bridge image-view jsk-recognition-msgs python3Packages.matplotlib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Convert audio (audio_common_msgs/AudioData) to spectrogram (sensor_msgs/Image)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
