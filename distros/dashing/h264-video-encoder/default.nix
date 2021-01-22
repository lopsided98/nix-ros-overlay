
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, aws-common, aws-ros2-common, h264-encoder-core, image-transport, kinesis-video-msgs, launch, launch-ros, rclcpp, rmw-implementation, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-h264-video-encoder";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_video_encoder-release/archive/release/dashing/h264_video_encoder/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8476f4992378c77f6ac26a02b88bbfe4ccc4e60c48e2e0b4dfc2534ff92a472b";
  };

  buildType = "ament_cmake";
  buildInputs = [ h264-encoder-core rclcpp ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common aws-ros2-common image-transport kinesis-video-msgs launch launch-ros rmw-implementation sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
