
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, roscpp }:
buildRosPackage {
  pname = "ros-melodic-audio-play";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_play/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "9befc86b77562b762538b038d9dc7b0da95121f565c15ac98862ad0fa7d6707c";
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
