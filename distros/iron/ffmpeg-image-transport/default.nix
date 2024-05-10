
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, ffmpeg, ffmpeg-image-transport-msgs, image-transport, libogg, opencv, pkg-config, pluginlib, rclcpp, rcutils, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ffmpeg-image-transport";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport-release/archive/release/iron/ffmpeg_image_transport/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "5d4a571aad4364c88080c76365ad9a28bb36d7a46f0332eabbab0de06606f22a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-clang-format ament-cmake-ros pkg-config ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge ffmpeg ffmpeg-image-transport-msgs image-transport libogg opencv opencv.cxxdev pluginlib rclcpp rcutils sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-clang-format ament-cmake-ros pkg-config ros-environment ];

  meta = {
    description = "ffmpeg_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with ffmpeg.";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
