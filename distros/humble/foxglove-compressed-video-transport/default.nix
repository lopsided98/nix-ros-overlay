
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, ffmpeg-encoder-decoder, foxglove-msgs, image-transport, pluginlib, rclcpp, rcutils, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-foxglove-compressed-video-transport";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_compressed_video_transport-release/archive/release/humble/foxglove_compressed_video_transport/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "9e73341ee9ac90a7272d37989848d5f46ab44350dcf9ba65545d179b91d3764a";
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
