
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gst_all_1, catkin, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-audio-play";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_play/0.3.3-0.tar.gz;
    sha256 = "132d07c5b00eb358b933445dc747bcb64f4c676da40db2d66058651f5c32f345";
  };

  propagatedBuildInputs = [ gst_all_1.gstreamer gst_all_1.gst-plugins-base roscpp gst_all_1.gst-plugins-ugly audio-common-msgs gst_all_1.gst-plugins-good ];
  nativeBuildInputs = [ catkin audio-common-msgs gst_all_1.gst-plugins-base roscpp gst_all_1.gstreamer ];

  meta = {
    description = ''Outputs audio to a speaker from a source node.'';
    #license = lib.licenses.BSD;
  };
}
