
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, h264-encoder-core, image-transport, sensor-msgs, catkin, image-transport-plugins, rostest, message-generation, kinesis-video-msgs, message-runtime, aws-ros1-common }:
buildRosPackage {
  pname = "ros-kinetic-h264-video-encoder";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/h264_video_encoder-release/archive/release/kinetic/h264_video_encoder/1.1.1-1.tar.gz;
    sha256 = "6b1afa3c05a4b916e68416e26de61fc42c6592fef6820bd216a8e0c9a6654c7a";
  };

  buildInputs = [ h264-encoder-core message-generation image-transport kinesis-video-msgs aws-ros1-common sensor-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-transport kinesis-video-msgs message-runtime aws-ros1-common sensor-msgs image-transport-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 H264 encoder node'';
    #license = lib.licenses.LGPLv2.1;
  };
}
