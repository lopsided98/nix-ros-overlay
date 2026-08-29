
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg-encoder-decoder, ffmpeg-image-transport-msgs, image-transport, pluginlib, rclcpp, rcutils, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ffmpeg-image-transport";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport-release/archive/release/kilted/ffmpeg_image_transport/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "dad5efdd77f8303b84b1c6ac6c1b29f88b131019cfa805043cb41e60be3ceedb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-black ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ffmpeg-encoder-decoder ffmpeg-image-transport-msgs image-transport pluginlib rclcpp rcutils sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "ffmpeg_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with ffmpeg.";
    license = with lib.licenses; [ asl20 ];
  };
}
