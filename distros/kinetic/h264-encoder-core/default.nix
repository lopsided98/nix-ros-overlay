
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, ffmpeg, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-h264-encoder-core";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_encoder_core-release/archive/release/kinetic/h264_encoder_core/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "d842c9640adea6a8ba3debd7679f3e1bdfd7577434951bac97eb8971b0423b26";
  };

  buildType = "cmake";
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
