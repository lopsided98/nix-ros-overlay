
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros1-common, catkin, gtest, h264-encoder-core, image-transport, image-transport-plugins, kinesis-video-msgs, message-generation, message-runtime, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-h264-video-encoder";
  version = "1.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "h264_video_encoder-release";
        rev = "release/melodic/h264_video_encoder/1.1.4-1";
        sha256 = "sha256-ejeDv1zgyDpC2ZhTKc2TsU/DKf0FiqOPbBSJ8QYImU0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ aws-ros1-common h264-encoder-core image-transport image-transport-plugins kinesis-video-msgs message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 H264 encoder node'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
