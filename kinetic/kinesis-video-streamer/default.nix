
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, catkin, rostest, kinesis-video-msgs, aws-common, rostopic, kinesis-manager, std-msgs, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-kinesis-video-streamer";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/kinetic/kinesis_video_streamer/2.0.1-0.tar.gz;
    sha256 = "45f0af4f63a652548c1a0449518de7cac6633a173dcb54fa1ead6fa612605652";
  };

  buildInputs = [ image-transport aws-common kinesis-video-msgs kinesis-manager std-msgs aws-ros1-common roscpp ];
  checkInputs = [ rostest rostopic ];
  propagatedBuildInputs = [ image-transport aws-common kinesis-video-msgs kinesis-manager std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinesis Video Streams producer node'';
    license = with lib.licenses; [ asl20 ];
  };
}
