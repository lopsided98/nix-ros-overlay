
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, roscpp }:
buildRosPackage {
  pname = "ros-noetic-audio-play";
  version = "0.3.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/noetic/audio_play/0.3.18-1.tar.gz";
    name = "0.3.18-1.tar.gz";
    sha256 = "8e5b95553bab2541e5e321ae5fa97f14da62511572c0948131a40038f0666925";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Outputs audio to a speaker from a source node.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
