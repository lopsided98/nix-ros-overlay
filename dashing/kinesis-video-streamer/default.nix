
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros2-common, ament-cmake, launch-ros, ament-cmake-gmock, image-transport, ament-cmake-gtest, launch, rmw-implementation, aws-common, kinesis-video-msgs, rclcpp, kinesis-manager, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-kinesis-video-streamer";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/dashing/kinesis_video_streamer/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "72d1aeda46a24f217cbc5e04f60d9a71b2a12b9458f9751602aee0b29eedddec";
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
