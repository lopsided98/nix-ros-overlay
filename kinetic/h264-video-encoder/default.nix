
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, image-transport-plugins, aws-ros1-common, catkin, h264-encoder-core, image-transport, gtest, gmock, message-runtime, rostest, kinesis-video-msgs }:
buildRosPackage {
  pname = "ros-kinetic-h264-video-encoder";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_video_encoder-release/archive/release/kinetic/h264_video_encoder/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "bd56f199e14fe267f5eb9ddfbc7738c7e245a2b4236a2a6a3c287e5ebcdb63fd";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs aws-ros1-common h264-encoder-core image-transport message-generation kinesis-video-msgs ];
  checkInputs = [ gtest gmock rostest ];
  propagatedBuildInputs = [ sensor-msgs image-transport-plugins aws-ros1-common h264-encoder-core image-transport message-runtime kinesis-video-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
