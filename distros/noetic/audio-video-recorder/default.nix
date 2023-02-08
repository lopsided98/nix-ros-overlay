
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common-msgs, catkin, gst_all_1, message-filters, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-audio-video-recorder";
  version = "2.2.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_common-release";
        rev = "release/noetic/audio_video_recorder/2.2.12-1";
        sha256 = "sha256-qUBSWrRNFP01zJz0aclbPO/bM7CITaupTR0eGuvwZJI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audio-common-msgs gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer message-filters roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for recording image and audio synchronously'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
