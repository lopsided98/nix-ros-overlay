
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gst_all_1, catkin, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-audio-capture";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_capture/0.3.3-0.tar.gz;
    sha256 = "2252342a125f03ac6333387bdbdb03c3cfb59c5f3ea8ee6cb70e42d007f33243";
  };

  propagatedBuildInputs = [ gst_all_1.gstreamer gst_all_1.gst-plugins-base roscpp gst_all_1.gst-plugins-ugly audio-common-msgs gst_all_1.gst-plugins-good ];
  nativeBuildInputs = [ catkin audio-common-msgs gst_all_1.gst-plugins-base roscpp gst_all_1.gstreamer ];

  meta = {
    description = ''Transports audio from a source to a destination. Audio sources can come
      from a microphone or file. The destination can play the audio or save it
      to an mp3 file.'';
    #license = lib.licenses.BSD;
  };
}
