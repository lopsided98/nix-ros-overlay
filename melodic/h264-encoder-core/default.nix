
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ffmpeg, catkin, cmake, gtest, gmock, aws-common }:
buildRosPackage {
  pname = "ros-melodic-h264-encoder-core";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_encoder_core-release/archive/release/melodic/h264_encoder_core/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "19f31cb9992ac20374ee457efcac78772598992ad832d31da4c9c23f02029dad";
  };

  buildType = "cmake";
  buildInputs = [ ffmpeg aws-common ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ ffmpeg aws-common ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
