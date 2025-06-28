
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg-encoder-decoder, ffmpeg-image-transport-msgs, image-transport, pluginlib, rclcpp, rcutils, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ffmpeg-image-transport";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport-release/archive/release/jazzy/ffmpeg_image_transport/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "495c99a61d35892f2d4d58d5aca467d4b1371e74cb9c54fb83515792e3f4f325";
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
