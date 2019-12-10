
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gmock, gtest, image-transport, kinesis-manager, kinesis-video-msgs, roscpp, rostest, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kinesis-video-streamer";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/kinetic/kinesis_video_streamer/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "0e13be37a19da782d192b1f700e6964958662b07eb8022d44d4f5d26a3d72114";
  };

  buildType = "catkin";
  checkInputs = [ gmock gtest rostest rostopic ];
  propagatedBuildInputs = [ aws-common aws-ros1-common image-transport kinesis-manager kinesis-video-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinesis Video Streams producer node'';
    license = with lib.licenses; [ asl20 ];
  };
}
