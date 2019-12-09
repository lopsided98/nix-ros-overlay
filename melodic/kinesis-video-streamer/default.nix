
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kinesis-manager, std-msgs, aws-ros1-common, catkin, rostopic, image-transport, roscpp, gtest, gmock, aws-common, rostest, kinesis-video-msgs }:
buildRosPackage {
  pname = "ros-melodic-kinesis-video-streamer";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/melodic/kinesis_video_streamer/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "70c0ba5487f08625f2680233635e3b347579820d3129e1af5a695d429d86d636";
  };

  buildType = "catkin";
  buildInputs = [ kinesis-manager std-msgs aws-ros1-common image-transport roscpp aws-common kinesis-video-msgs ];
  checkInputs = [ gtest gmock rostest rostopic ];
  propagatedBuildInputs = [ kinesis-manager std-msgs aws-ros1-common image-transport roscpp aws-common kinesis-video-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinesis Video Streams producer node'';
    license = with lib.licenses; [ asl20 ];
  };
}
