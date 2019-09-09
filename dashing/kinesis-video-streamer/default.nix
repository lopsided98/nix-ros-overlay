
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros2-common, ament-cmake, launch-ros, ament-cmake-gmock, image-transport, ament-cmake-gtest, launch, rmw-implementation, aws-common, kinesis-video-msgs, rclcpp, kinesis-manager, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-kinesis-video-streamer";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/dashing/kinesis_video_streamer/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "4249dc41ff27f3e5851af754aa7406d45cf3847c6af5b68a1983bbb65060e4f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ aws-ros2-common image-transport rmw-implementation aws-common kinesis-video-msgs rclcpp kinesis-manager ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ rmw-implementation python3Packages.pyyaml launch launch-ros ];
  nativeBuildInputs = [ rmw-implementation ament-cmake ];

  meta = {
    description = ''Kinesis Video Streams producer node'';
    license = with lib.licenses; [ asl20 ];
  };
}
