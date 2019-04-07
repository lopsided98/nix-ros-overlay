
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gst_all_1, catkin, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-audio-capture";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_capture/0.3.3-0.tar.gz;
    sha256 = "c24552309d44459372bb344e5d02af47ce6f9451329cb1f73e99e57833d734cb";
  };

  buildInputs = [ gst_all_1.gst-plugins-base roscpp gst_all_1.gstreamer audio-common-msgs ];
  propagatedBuildInputs = [ gst_all_1.gstreamer gst_all_1.gst-plugins-base roscpp gst_all_1.gst-plugins-ugly audio-common-msgs gst_all_1.gst-plugins-good ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transports audio from a source to a destination. Audio sources can come
      from a microphone or file. The destination can play the audio or save it
      to an mp3 file.'';
    #license = lib.licenses.BSD;
  };
}
