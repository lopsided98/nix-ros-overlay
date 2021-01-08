
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-kinesis-video-msgs";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/kinetic/kinesis_video_msgs/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "b25ce2df1b119fd31e4fc2a5e2f8740c19e79649706953c5a85286aaa26db123";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams'';
    license = with lib.licenses; [ asl20 ];
  };
}
