
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-capture, audio-common-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-view, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, python3Packages, ros-environment, roslaunch, rostest, rostopic, sensor-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-audio-to-spectrogram";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/audio_to_spectrogram/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "23cb044543dd8f754bc4f0cce1723e19dace2e6a04dcfa0c2bd84f9e38018646";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  checkInputs = [ jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ audio-capture audio-common-msgs cv-bridge dynamic-reconfigure geometry-msgs image-view jsk-recognition-msgs jsk-topic-tools python3Packages.matplotlib rostopic sensor-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Convert audio (audio_common_msgs/AudioData) to spectrogram (sensor_msgs/Image)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
