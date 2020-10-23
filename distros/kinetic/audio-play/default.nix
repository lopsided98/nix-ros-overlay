
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-audio-play";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_play/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "881ae124272e68b8a23daa9edd566346c4fa755598d650e21df97d28ff95389d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Outputs audio to a speaker from a source node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
