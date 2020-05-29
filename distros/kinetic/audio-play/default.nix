
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-audio-play";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_play/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "96d9135c07074baf5213689460dc6b32ddb4506111a3bae3ab180d272aee4a03";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Outputs audio to a speaker from a source node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
