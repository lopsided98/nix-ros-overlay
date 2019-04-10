
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gst_all_1, catkin, audio-common-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-audio-play";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/lunar/audio_play/0.3.3-0.tar.gz;
    sha256 = "d1d9922117806cb7d3eb09aad21137a106a9e198d336fe1e7c646f5ae584e238";
  };

  buildInputs = [ gst_all_1.gst-plugins-base roscpp gst_all_1.gstreamer audio-common-msgs ];
  propagatedBuildInputs = [ gst_all_1.gstreamer gst_all_1.gst-plugins-base roscpp gst_all_1.gst-plugins-ugly audio-common-msgs gst_all_1.gst-plugins-good ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Outputs audio to a speaker from a source node.'';
    #license = lib.licenses.BSD;
  };
}
