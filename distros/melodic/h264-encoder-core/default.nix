
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, ffmpeg, gtest }:
buildRosPackage {
  pname = "ros-melodic-h264-encoder-core";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_encoder_core-release/archive/release/melodic/h264_encoder_core/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "19f31cb9992ac20374ee457efcac78772598992ad832d31da4c9c23f02029dad";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
