
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gst_all_1, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-audio-play";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_play/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "a3c3715c6c4d70959103aa529c2e2cdcf46e6a07d500ed262146038ecdcb07c5";
  };

  buildType = "catkin";
  buildInputs = [ gst_all_1.gst-plugins-base audio-common-msgs gst_all_1.gstreamer roscpp ];
  propagatedBuildInputs = [ gst_all_1.gst-plugins-good audio-common-msgs gst_all_1.gstreamer gst_all_1.gst-plugins-ugly roscpp gst_all_1.gst-plugins-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Outputs audio to a speaker from a source node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
