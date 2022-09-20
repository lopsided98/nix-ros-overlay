
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gtest, image-transport, kinesis-manager, kinesis-video-msgs, roscpp, rostest, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-kinesis-video-streamer";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/melodic/kinesis_video_streamer/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "c9d21edf29f27e1896e428ecabe75be86a821ecb7caa07ff4fd3ffd45c4c1385";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest rostopic ];
  propagatedBuildInputs = [ aws-common aws-ros1-common image-transport kinesis-manager kinesis-video-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinesis Video Streams producer node'';
    license = with lib.licenses; [ asl20 ];
  };
}
