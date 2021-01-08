
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-kinesis-video-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/dashing/kinesis_video_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "2bc35c68e788573943d2bf3bc996b397091056faf911255e32584f0090c900af";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diagnostic-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams.'';
    license = with lib.licenses; [ asl20 ];
  };
}
