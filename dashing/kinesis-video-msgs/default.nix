
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-kinesis-video-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/dashing/kinesis_video_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "1ddec6d31c5a5a7bbfdc42d80d4ebed5a027516b99727c86d4f572e67c6d4b6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ diagnostic-msgs ];
  propagatedBuildInputs = [ diagnostic-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Messages for transmitting video frames to Kinesis Video Streams.'';
    license = with lib.licenses; [ asl20 ];
  };
}
