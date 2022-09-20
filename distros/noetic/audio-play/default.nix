
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, roscpp }:
buildRosPackage {
  pname = "ros-noetic-audio-play";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/noetic/audio_play/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "1713387c598bc0a0fee2c12ca5004eeec8ffd3f433884b55df4743dd326a9315";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Outputs audio to a speaker from a source node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
