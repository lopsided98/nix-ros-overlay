
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, ffmpeg, ffmpeg-image-transport-msgs, image-transport, libogg, opencv, pkg-config, pluginlib, rclcpp, rcutils, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ffmpeg-image-transport";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport-release/archive/release/jazzy/ffmpeg_image_transport/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "a1c2e52f60164d8cd752c86b83d9152c044ca5488b48dc65d305ebebae467a15";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros pkg-config ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge ffmpeg ffmpeg-image-transport-msgs image-transport libogg opencv opencv.cxxdev pluginlib rclcpp rcutils sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros pkg-config ros-environment ];

  meta = {
    description = "ffmpeg_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with ffmpeg.";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
