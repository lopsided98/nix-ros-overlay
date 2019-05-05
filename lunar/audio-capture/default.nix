
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gst_all_1, catkin, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-audio-capture";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/lunar/audio_capture/0.3.3-0.tar.gz;
    sha256 = "0a769b14163c0be6940b48d14b68462d9292737c74bab78f296d5639a46359c6";
  };

  buildInputs = [ gst_all_1.gst-plugins-base roscpp gst_all_1.gstreamer audio-common-msgs ];
  propagatedBuildInputs = [ gst_all_1.gst-plugins-ugly gst_all_1.gstreamer gst_all_1.gst-plugins-base roscpp audio-common-msgs gst_all_1.gst-plugins-good ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transports audio from a source to a destination. Audio sources can come
      from a microphone or file. The destination can play the audio or save it
      to an mp3 file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
