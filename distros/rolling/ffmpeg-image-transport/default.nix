
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg-encoder-decoder, ffmpeg-image-transport-msgs, image-transport, pluginlib, rclcpp, rcutils, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ffmpeg-image-transport";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport-release/archive/release/rolling/ffmpeg_image_transport/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "9ce042ac14ee9f98cb95fc8c833db82f4f760b0f083ce93719fb728f5db6c7e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ffmpeg-encoder-decoder ffmpeg-image-transport-msgs image-transport pluginlib rclcpp rcutils sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "ffmpeg_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with ffmpeg.";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
