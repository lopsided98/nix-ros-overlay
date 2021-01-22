
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, aws-common, cmake, ffmpeg }:
buildRosPackage {
  pname = "ros-dashing-h264-encoder-core";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_encoder_core-release/archive/release/dashing/h264_encoder_core/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "ef156a1ea7c88eec7b3fc3d3a01d1485f80056881e517e7d9c6b7382fbdf01f9";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
