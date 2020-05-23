
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, roscpp }:
buildRosPackage {
  pname = "ros-noetic-audio-capture";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/noetic/audio_capture/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "746f069448936c7a1544d05990d40a75c3a44dcbccd85dc7062e8bd4e93d8ea8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transports audio from a source to a destination. Audio sources can come
      from a microphone or file. The destination can play the audio or save it
      to an mp3 file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
