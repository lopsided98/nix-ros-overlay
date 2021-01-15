
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, aws-common, aws-ros2-common, image-transport, kinesis-manager, kinesis-video-msgs, launch, launch-ros, python3Packages, rclcpp, rmw-implementation }:
buildRosPackage {
  pname = "ros-dashing-kinesis-video-streamer";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/kinesis_video_streamer-release/archive/release/dashing/kinesis_video_streamer/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "72d1aeda46a24f217cbc5e04f60d9a71b2a12b9458f9751602aee0b29eedddec";
  };

  buildType = "ament_cmake";
  buildInputs = [ aws-common aws-ros2-common image-transport kinesis-manager kinesis-video-msgs rclcpp ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ launch launch-ros python3Packages.pyyaml rmw-implementation ];
  nativeBuildInputs = [ ament-cmake rmw-implementation ];

  meta = {
    description = ''Kinesis Video Streams producer node'';
    license = with lib.licenses; [ asl20 ];
  };
}
