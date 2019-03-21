
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, ffmpeg }:
buildRosPackage {
  pname = "ros-kinetic-h264-encoder-core";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/h264_encoder_core-release/archive/release/kinetic/h264_encoder_core/2.0.0-1.tar.gz;
    sha256 = "faabd969dfabd617b9ab7af875af6cd999a4666da626dd663977153854bdeae4";
  };

  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ cmake aws-common ffmpeg ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    #license = lib.licenses.LGPLv2.1;
  };
}
