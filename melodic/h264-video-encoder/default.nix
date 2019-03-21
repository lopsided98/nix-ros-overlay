
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, h264-encoder-core, image-transport, sensor-msgs, catkin, image-transport-plugins, rostest, kinesis-video-msgs, message-generation, message-runtime, aws-ros1-common }:
buildRosPackage {
  pname = "ros-melodic-h264-video-encoder";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/h264_video_encoder-release/archive/release/melodic/h264_video_encoder/1.1.1-0.tar.gz;
    sha256 = "c295ba7a0e8cb25eacccc5092b810f0951c20268345218d2634bd6ecc30d0608";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-transport kinesis-video-msgs message-runtime aws-ros1-common sensor-msgs image-transport-plugins ];
  nativeBuildInputs = [ h264-encoder-core message-generation image-transport kinesis-video-msgs aws-ros1-common sensor-msgs catkin ];

  meta = {
    description = ''ROS1 H264 encoder node'';
    #license = lib.licenses.LGPLv2.1;
  };
}
