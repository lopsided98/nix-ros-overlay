
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, ffmpeg }:
buildRosPackage {
  pname = "ros-melodic-h264-encoder-core";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/h264_encoder_core-release/archive/release/melodic/h264_encoder_core/2.0.0-0.tar.gz;
    sha256 = "67e0ef7ef6d8f71198043fa55ce97ec74cd53cc1c9caf3e21f04dc58df7c7fb5";
  };

  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ cmake aws-common ffmpeg ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    #license = lib.licenses.LGPLv2.1;
  };
}
