
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-kinesis-video-msgs";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/melodic/kinesis_video_msgs/2.0.1-0.tar.gz;
    sha256 = "6247ad1ed4da03dcf0fbac818d5759d9382c0c68d6b74a4bb824676c479e5337";
  };

  buildInputs = [ diagnostic-msgs message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams'';
    #license = lib.licenses.Apache 2.0;
  };
}
