
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-audio-capture";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_capture/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "79dd5347611a43e888155da07c2a2bdb91c5a9db3032a0be638d38bec8f62540";
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
