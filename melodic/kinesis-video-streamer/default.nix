
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, catkin, rostest, kinesis-video-msgs, aws-common, rostopic, kinesis-manager, std-msgs, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-melodic-kinesis-video-streamer";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/melodic/kinesis_video_streamer/2.0.1-0.tar.gz;
    sha256 = "63f75867b432622944356a87a290bd76e4ad6bd76b5dc98306905eade52c16f1";
  };

  checkInputs = [ rostest rostopic ];
  propagatedBuildInputs = [ image-transport aws-common kinesis-video-msgs kinesis-manager std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ image-transport aws-common kinesis-video-msgs kinesis-manager std-msgs aws-ros1-common catkin roscpp ];

  meta = {
    description = ''Kinesis Video Streams producer node'';
    #license = lib.licenses.Apache 2.0;
  };
}
