
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, aws-ros2-common, launch, kinesis-video-msgs, launch-ros, h264-encoder-core, ament-cmake, image-transport, rmw-implementation, rclcpp, aws-common, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-h264-video-encoder";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_video_encoder-release/archive/release/dashing/h264_video_encoder/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8476f4992378c77f6ac26a02b88bbfe4ccc4e60c48e2e0b4dfc2534ff92a472b";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs aws-ros2-common h264-encoder-core image-transport rmw-implementation rclcpp aws-common kinesis-video-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs aws-ros2-common launch launch-ros image-transport rmw-implementation aws-common kinesis-video-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
