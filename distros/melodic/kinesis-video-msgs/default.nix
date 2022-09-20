
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-kinesis-video-msgs";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/melodic/kinesis_video_msgs/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "d3116f1e9c9aea3eeda1de9c5a49056834699356ebdf058f713112425306ca09";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams'';
    license = with lib.licenses; [ asl20 ];
  };
}
