
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, ffmpeg-image-transport, ffmpeg-image-transport-msgs, rclcpp, ros-environment, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-ffmpeg-image-transport-tools";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_tools-release/archive/release/iron/ffmpeg_image_transport_tools/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "9fe579b2932e39c5b5f5798c23b4cef28a0b7a38af0b37d6325949fe0431986e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge ffmpeg-image-transport ffmpeg-image-transport-msgs rclcpp rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ros-environment ];

  meta = {
    description = "tools for processing ffmpeg_image_transport_msgs";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
