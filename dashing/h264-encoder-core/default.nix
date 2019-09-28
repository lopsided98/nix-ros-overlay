
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ffmpeg, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-h264-encoder-core";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_encoder_core-release/archive/release/dashing/h264_encoder_core/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "a75dea0c5348288064b2ea0a1c7586d59313b282b8f552e1578c43a175e53078";
  };

  buildType = "cmake";
  buildInputs = [ aws-common ffmpeg ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
