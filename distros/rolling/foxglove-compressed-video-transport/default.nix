
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg-encoder-decoder, foxglove-msgs, image-transport, pluginlib, rclcpp, rcutils, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-foxglove-compressed-video-transport";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_compressed_video_transport-release/archive/release/rolling/foxglove_compressed_video_transport/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ae81418cb436fae8c32b570d7a77985fc9b6f749e611c7bfe6a96a36e4152f06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ffmpeg-encoder-decoder foxglove-msgs image-transport pluginlib rclcpp rcutils sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "foxglove_compressed_video_transport provides a plugin to image_transport for
    transparently sending an image stream encoded in foxglove compressed video packets.";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
