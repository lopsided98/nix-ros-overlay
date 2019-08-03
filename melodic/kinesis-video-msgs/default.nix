
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-kinesis-video-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/melodic/kinesis_video_msgs/2.0.2-1.tar.gz;
    sha256 = "419f536aba89e3196e900544be65ddcab91ae3a0c6969b1cc12cc43d5a89a056";
  };

  buildInputs = [ diagnostic-msgs message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams'';
    license = with lib.licenses; [ asl20 ];
  };
}
