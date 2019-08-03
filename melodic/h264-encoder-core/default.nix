
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, catkin, ffmpeg, aws-common, cmake, gmock }:
buildRosPackage {
  pname = "ros-melodic-h264-encoder-core";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/h264_encoder_core-release/archive/release/melodic/h264_encoder_core/2.0.1-1.tar.gz;
    sha256 = "dbc4f911dc13d008b82e2ecc282975e2579061533d77738d5611e8abff285319";
  };

  buildInputs = [ aws-common ffmpeg ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
