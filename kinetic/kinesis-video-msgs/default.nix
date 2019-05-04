
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-kinesis-video-msgs";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/kinetic/kinesis_video_msgs/2.0.1-0.tar.gz;
    sha256 = "a0ecf2f7eccb4ce41df905278f6b92146d7f757571e2bcb34f280fbe9d5457dd";
  };

  buildInputs = [ diagnostic-msgs message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams'';
    license = with lib.licenses; [ asl20 ];
  };
}
