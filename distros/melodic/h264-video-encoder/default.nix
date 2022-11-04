
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros1-common, catkin, gtest, h264-encoder-core, image-transport, image-transport-plugins, kinesis-video-msgs, message-generation, message-runtime, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-h264-video-encoder";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_video_encoder-release/archive/release/melodic/h264_video_encoder/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "38a0e3a060c7431cd832095221ba6eaa681fe9c982286e8a008032448e9bf861";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ aws-ros1-common h264-encoder-core image-transport image-transport-plugins kinesis-video-msgs message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 H264 encoder node'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
