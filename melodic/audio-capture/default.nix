
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gst_all_1, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-audio-capture";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_capture/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "c24552309d44459372bb344e5d02af47ce6f9451329cb1f73e99e57833d734cb";
  };

  buildType = "catkin";
  buildInputs = [ gst_all_1.gst-plugins-base audio-common-msgs gst_all_1.gstreamer roscpp ];
  propagatedBuildInputs = [ gst_all_1.gst-plugins-good audio-common-msgs gst_all_1.gstreamer gst_all_1.gst-plugins-ugly roscpp gst_all_1.gst-plugins-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transports audio from a source to a destination. Audio sources can come
      from a microphone or file. The destination can play the audio or save it
      to an mp3 file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
