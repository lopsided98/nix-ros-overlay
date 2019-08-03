
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, h264-encoder-core, image-transport, sensor-msgs, gtest, catkin, image-transport-plugins, rostest, message-generation, kinesis-video-msgs, message-runtime, aws-ros1-common, gmock }:
buildRosPackage {
  pname = "ros-kinetic-h264-video-encoder";
  version = "1.1.3-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/h264_video_encoder-release/archive/release/kinetic/h264_video_encoder/1.1.3-1.tar.gz;
    sha256 = "9b98640a982c6a95553cbe574c44752a5ab834c8e4c9c0ff98adc938009b43a8";
  };

  buildInputs = [ h264-encoder-core image-transport sensor-msgs message-generation kinesis-video-msgs aws-ros1-common ];
  checkInputs = [ rostest gtest gmock ];
  propagatedBuildInputs = [ image-transport sensor-msgs image-transport-plugins kinesis-video-msgs message-runtime aws-ros1-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
