
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, diagnostic-msgs, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-kinesis-video-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/dashing/kinesis_video_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "2bc35c68e788573943d2bf3bc996b397091056faf911255e32584f0090c900af";
  };

  buildType = "ament_cmake";
  buildInputs = [ diagnostic-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime diagnostic-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams.'';
    license = with lib.licenses; [ asl20 ];
  };
}
