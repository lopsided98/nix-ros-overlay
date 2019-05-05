
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gst_all_1, catkin, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-audio-play";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_play/0.3.3-0.tar.gz;
    sha256 = "a3c3715c6c4d70959103aa529c2e2cdcf46e6a07d500ed262146038ecdcb07c5";
  };

  buildInputs = [ gst_all_1.gst-plugins-base roscpp gst_all_1.gstreamer audio-common-msgs ];
  propagatedBuildInputs = [ gst_all_1.gst-plugins-ugly gst_all_1.gstreamer gst_all_1.gst-plugins-base roscpp audio-common-msgs gst_all_1.gst-plugins-good ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Outputs audio to a speaker from a source node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
